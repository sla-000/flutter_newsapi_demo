import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../di/di.dart';
import '../../../domain/models/article_domain_model.dart';
import '../cubits/top_headlines_cubit.dart';

const _switchDuration = Duration(milliseconds: 500);

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
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Wrap(
              children: [
                Text(article.publishedAt),
                if (article.author != null) Text(article.author!),
              ],
            ),
            Text(article.title),
            Text(article.description),
          ],
        ),
      ),
    );
  }
}
