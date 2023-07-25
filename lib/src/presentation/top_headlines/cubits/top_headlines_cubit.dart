import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/models/article_domain_model.dart';
import '../../../domain/usecases/check_article_saved_usecase.dart';
import '../../../domain/usecases/get_top_headlines_usecase.dart';
import '../../../domain/usecases/load_all_articles_usecase.dart';
import '../../../domain/usecases/remove_article_usecase.dart';
import '../../../domain/usecases/save_article_usecase.dart';
import 'favorite_article.dart';

part 'top_headlines_cubit.freezed.dart';
part 'top_headlines_state.dart';

const _refreshPeriod = Duration(minutes: 5);

@injectable
class TopHeadlinesCubit extends Cubit<TopHeadlinesState> {
  TopHeadlinesCubit({
    required this.getTopHeadlinesUsecase,
    required this.saveArticleUsecase,
    required this.removeArticleUsecase,
    required this.checkArticleSavedUsecase,
    required this.loadAllArticlesUsecase,
  }) : super(const TopHeadlinesState.initial()) {
    _timer = Timer.periodic(_refreshPeriod, _onTimer);
  }

  @protected
  final GetTopHeadlinesUsecase getTopHeadlinesUsecase;
  @protected
  final SaveArticleUsecase saveArticleUsecase;
  @protected
  final RemoveArticleUsecase removeArticleUsecase;
  @protected
  final CheckArticleSavedUsecase checkArticleSavedUsecase;
  @protected
  final LoadAllArticlesUsecase loadAllArticlesUsecase;

  late final Timer _timer;

  void _onTimer(_) {
    unawaited(refresh());
  }

  @override
  Future<void> close() async {
    _timer.cancel();

    await super.close();
  }

  Future<void> refresh() async {
    final currentState = state;

    if (currentState is! TopHeadlinesStateSuccess) {
      return;
    }

    final currentSourcesIds = currentState.sourcesIds;

    if (currentSourcesIds.isEmpty) {
      return;
    }

    await load(sourceIds: currentSourcesIds);
  }

  Future<void> load({required Iterable<String> sourceIds}) async {
    try {
      emit(const TopHeadlinesState.loading());

      late final List<ArticleDomainModel> articles;

      if (sourceIds.isEmpty) {
        articles = await loadAllArticlesUsecase.call();
      } else {
        articles = await getTopHeadlinesUsecase.call(sources: sourceIds);
      }

      final favoriteArticles = <FavoriteArticle>{};

      for (final article in articles) {
        final saved = await checkArticleSavedUsecase.call(
          title: article.title,
          publishedAt: article.publishedAt,
        );

        if (saved) {
          favoriteArticles.add(
            FavoriteArticle(
              publishedAt: article.publishedAt,
              title: article.title,
            ),
          );
        }
      }

      emit(
        TopHeadlinesState.success(
          articles: articles,
          sourcesIds: sourceIds.toSet(),
          favoriteArticles: favoriteArticles,
        ),
      );
    } on Exception catch (error, stackTrace) {
      emit(TopHeadlinesState.error(error: error, stackTrace: stackTrace));
    }
  }

  Future<void> addToFavorite({
    required ArticleDomainModel article,
  }) async {
    final currentState = state;

    if (currentState is! TopHeadlinesStateSuccess) {
      return;
    }

    try {
      await saveArticleUsecase.call(
        title: article.title,
        url: article.url,
        author: article.author,
        content: article.content,
        description: article.description,
        publishedAt: article.publishedAt,
      );

      final currentFavoriteArticles = Set.of(currentState.favoriteArticles);
      currentFavoriteArticles.add(
        FavoriteArticle(
          title: article.title,
          publishedAt: article.publishedAt,
        ),
      );

      emit(currentState.copyWith(favoriteArticles: currentFavoriteArticles));
    } on Exception catch (error, stackTrace) {
      emit(TopHeadlinesState.error(error: error, stackTrace: stackTrace));
    }
  }

  Future<void> removeFromFavorite({
    required ArticleDomainModel article,
  }) async {
    final currentState = state;

    if (currentState is! TopHeadlinesStateSuccess) {
      return;
    }

    try {
      await removeArticleUsecase.call(
        title: article.title,
        publishedAt: article.publishedAt,
      );

      final currentFavoriteArticles = Set.of(currentState.favoriteArticles);
      currentFavoriteArticles.remove(
        FavoriteArticle(
          title: article.title,
          publishedAt: article.publishedAt,
        ),
      );

      emit(currentState.copyWith(favoriteArticles: currentFavoriteArticles));
    } on Exception catch (error, stackTrace) {
      emit(TopHeadlinesState.error(error: error, stackTrace: stackTrace));
    }
  }
}
