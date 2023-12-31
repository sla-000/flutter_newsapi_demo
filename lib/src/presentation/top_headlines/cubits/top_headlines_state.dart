part of 'top_headlines_cubit.dart';

@freezed
class TopHeadlinesState with _$TopHeadlinesState {
  const factory TopHeadlinesState.initial() = TopHeadlinesStateInitial;

  const factory TopHeadlinesState.loading() = TopHeadlinesStateLoading;

  const factory TopHeadlinesState.success({
    required List<ArticleDomainModel> articles,
    @Default({}) Set<String> sourcesIds,
    @Default({}) Set<FavoriteArticle> favoriteArticles,
  }) = TopHeadlinesStateSuccess;

  const factory TopHeadlinesState.error({
    required Exception error,
    required StackTrace stackTrace,
  }) = TopHeadlinesStateError;
}
