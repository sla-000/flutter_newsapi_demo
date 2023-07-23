part of 'sources_cubit.dart';

@freezed
class SourcesState with _$SourcesState {
  const factory SourcesState.initial() = SourcesStateInitial;

  const factory SourcesState.loading() = SourcesStateLoading;

  const factory SourcesState.success({
    required List<ArticleSourceDomainModel> sources,
  }) = SourcesStateSuccess;

  const factory SourcesState.error({
    required Exception error,
    required StackTrace stackTrace,
  }) = SourcesStateError;
}
