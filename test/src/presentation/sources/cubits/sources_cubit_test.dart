import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:newsapi_demo/src/domain/models/article_source_domain_model.dart';
import 'package:newsapi_demo/src/domain/usecases/get_sources_usecase.dart';
import 'package:newsapi_demo/src/presentation/sources/cubits/sources_cubit.dart';

class _MockGetSourcesUsecase extends Mock implements GetSourcesUsecase {}

class _MockArticleSourceDomainModel extends Mock
    implements ArticleSourceDomainModel {}

const _id = '_id';

void main() {
  final mockGetSourcesUsecase = _MockGetSourcesUsecase();
  final mockArticleSourceDomainModel = _MockArticleSourceDomainModel();

  setUp(() {
    when(
      () => mockGetSourcesUsecase.call(
        category: any(named: 'category'),
        country: any(named: 'country'),
        language: any(named: 'language'),
      ),
    ).thenAnswer((_) async => [
          mockArticleSourceDomainModel,
        ]);
  });

  group('SourcesCubit tests - ', () {
    blocTest(
      'GIVEN cubit created '
      'WHEN load called '
      'THEN should emit correct states',
      build: () => SourcesCubit(
        getSourcesUsecase: mockGetSourcesUsecase,
      ),
      act: (bloc) => bloc.load(),
      expect: () => [
        const SourcesState.loading(),
        SourcesState.success(sources: [mockArticleSourceDomainModel]),
      ],
    );

    blocTest(
      'GIVEN cubit created '
      'WHEN select and unselect called '
      'THEN should emit correct states',
      build: () => SourcesCubit(
        getSourcesUsecase: mockGetSourcesUsecase,
      ),
      act: (bloc) async {
        await bloc.load();
        bloc.select(_id);
        bloc.select(_id);
        bloc.unselect(_id);
        bloc.unselect(_id);
      },
      expect: () => [
        const SourcesState.loading(),
        SourcesState.success(sources: [mockArticleSourceDomainModel]),
        SourcesState.success(
          sources: [mockArticleSourceDomainModel],
          selectedIds: {_id},
        ),
        SourcesState.success(sources: [mockArticleSourceDomainModel]),
      ],
    );
  });
}
