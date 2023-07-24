import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../di/di.dart';
import '../../../domain/models/article_domain_model.dart';
import '../cubits/top_headlines_cubit.dart';

const _switchDuration = Duration(milliseconds: 500);
const _spacing = 12.0;

class ArticlesList extends StatelessWidget {
  const ArticlesList({
    super.key,
    required this.selectedIds,
  });

  final Set<String> selectedIds;

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) {
          final topHeadlinesCubit = di<TopHeadlinesCubit>();

          unawaited(topHeadlinesCubit.load(sourceIds: selectedIds));

          return topHeadlinesCubit;
        },
        child: const ArticlesListInner(),
      );
}

class ArticlesListInner extends StatelessWidget {
  const ArticlesListInner({super.key});

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<TopHeadlinesCubit, TopHeadlinesState>(
        builder: (context, state) => state.when(
          initial: () => const AnimatedSwitcher(
            key: Key('ArticlesList'),
            duration: _switchDuration,
            child: SizedBox.shrink(),
          ),
          loading: () => const AnimatedSwitcher(
            key: Key('ArticlesList'),
            duration: _switchDuration,
            child: Center(child: CircularProgressIndicator()),
          ),
          success: (articles) => AnimatedSwitcher(
            key: const Key('ArticlesList'),
            duration: _switchDuration,
            child: ArticlesListLoaded(articles: articles),
          ),
          error: (error, _) => AnimatedSwitcher(
            key: const Key('ArticlesList'),
            duration: _switchDuration,
            child: Center(child: Text('Error: $error')),
          ),
        ),
      );
}

class ArticlesListLoaded extends StatelessWidget {
  const ArticlesListLoaded({
    super.key,
    required this.articles,
  });

  final List<ArticleDomainModel> articles;

  @override
  Widget build(BuildContext context) => Column(
        children: articles
            .map((article) => OneArticle(article: article))
            .toList(growable: false),
      );
}

class OneArticle extends StatelessWidget {
  const OneArticle({
    super.key,
    required this.article,
  });

  final ArticleDomainModel article;

  @override
  Widget build(BuildContext context) => Card(
        child: Padding(
          padding: const EdgeInsets.all(_spacing),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Wrap(
                      spacing: 16,
                      children: [
                        Text(
                          _getTime(context, article.publishedAt),
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
                    icon: const Icon(Icons.favorite_outline),
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(height: _spacing),
              Text(
                article.title,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: _spacing),
              Text(article.description),
              if (article.content != null) ...[
                const SizedBox(height: _spacing),
                Text(article.content!)
              ],
            ],
          ),
        ),
      );

  String _getTime(BuildContext context, String time) {
    final localTime = DateTime.parse(time).toLocal();
    final locale = Localizations.localeOf(context).toString();

    final dateStr = DateFormat.yMMMMEEEEd(locale).format(localTime);
    final timeStr = DateFormat.Hms(locale).format(localTime);

    return '$dateStr $timeStr';
  }
}
