import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../domain/models/article_domain_model.dart';
import '../../utils/l10n_utils.dart';
import '../cubits/favorite_article.dart';
import '../cubits/top_headlines_cubit.dart';

const _switchDuration = Duration(milliseconds: 500);
const _spacing = 12.0;

class ArticlesList extends StatelessWidget {
  const ArticlesList({super.key});

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<TopHeadlinesCubit, TopHeadlinesState>(
        builder: (context, state) => state.when(
          initial: () => AnimatedSwitcher(
            key: const Key('ArticlesList'),
            duration: _switchDuration,
            child: SizedBox(height: MediaQuery.sizeOf(context).height),
          ),
          loading: () => AnimatedSwitcher(
            key: const Key('ArticlesList'),
            duration: _switchDuration,
            child: SizedBox(
              height: MediaQuery.sizeOf(context).height,
              child: const Align(
                alignment: Alignment.topCenter,
                child: CircularProgressIndicator(),
              ),
            ),
          ),
          success: (articles, _, favoriteArticles) => AnimatedSwitcher(
            key: const Key('ArticlesList'),
            duration: _switchDuration,
            child: ArticlesListLoaded(
              articles: articles,
              favoriteArticles: favoriteArticles,
            ),
          ),
          error: (error, _) => AnimatedSwitcher(
            key: const Key('ArticlesList'),
            duration: _switchDuration,
            child: SizedBox(
              height: MediaQuery.sizeOf(context).height,
              child: Align(
                alignment: Alignment.topCenter,
                child: Text('Error: $error'),
              ),
            ),
          ),
        ),
      );
}

class ArticlesListLoaded extends StatelessWidget {
  const ArticlesListLoaded({
    super.key,
    required this.articles,
    required this.favoriteArticles,
  });

  final List<ArticleDomainModel> articles;
  final Set<FavoriteArticle> favoriteArticles;

  @override
  Widget build(BuildContext context) => Column(
        children: articles
            .map(
              (article) => OneArticle(
                article: article,
                isFavorite: favoriteArticles.any(
                  (favoriteArticle) =>
                      _isArticleTheSame(favoriteArticle, article),
                ),
              ),
            )
            .toList(growable: false),
      );

  bool _isArticleTheSame(
    FavoriteArticle favoriteArticle,
    ArticleDomainModel article,
  ) =>
      favoriteArticle.title == article.title &&
      favoriteArticle.publishedAt == article.publishedAt;
}

class OneArticle extends StatelessWidget {
  const OneArticle({
    super.key,
    required this.article,
    required this.isFavorite,
  });

  final ArticleDomainModel article;
  final bool isFavorite;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(_spacing),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                TimeAuthorLike(
                  article: article,
                  isFavorite: isFavorite,
                ),
                if (article.title != null) ...[
                  const SizedBox(height: _spacing),
                  Text(
                    article.title!,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ],
                if (article.description != null) ...[
                  const SizedBox(height: _spacing),
                  Text(article.description!),
                ],
                if (article.content != null) ...[
                  const SizedBox(height: _spacing),
                  Text(article.content!)
                ],
                if (article.url != null) ...[
                  const SizedBox(height: _spacing),
                  InkWell(
                    onTap: () => unawaited(launchUrl(Uri.parse(article.url!))),
                    child: Text(
                      article.url!,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Colors.blue,
                            decorationStyle: TextDecorationStyle.solid,
                          ),
                    ),
                  )
                ],
              ],
            ),
          ),
        ),
      );
}

class TimeAuthorLike extends StatelessWidget {
  const TimeAuthorLike({
    super.key,
    required this.article,
    required this.isFavorite,
  });

  final ArticleDomainModel article;
  final bool isFavorite;

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Wrap(
              spacing: 16,
              children: [
                if (article.publishedAt != null)
                  Text(
                    getLocalizedTime(
                      Localizations.localeOf(context),
                      article.publishedAt!,
                    ),
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                if (article.author != null)
                  Text(
                    article.author!,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
              ],
            ),
          ),
          IconButton(
            icon: isFavorite
                ? const Icon(Icons.favorite)
                : const Icon(Icons.favorite_outline),
            onPressed: () {
              isFavorite
                  ? unawaited(
                      context
                          .read<TopHeadlinesCubit>()
                          .removeFromFavorite(article: article),
                    )
                  : unawaited(
                      context
                          .read<TopHeadlinesCubit>()
                          .addToFavorite(article: article),
                    );
            },
          ),
        ],
      );
}
