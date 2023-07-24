// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:news_api/news_api.dart' as _i10;
import 'package:newsapi_demo/src/data/mappers/sources_request_mapper.dart'
    as _i4;
import 'package:newsapi_demo/src/data/mappers/sources_response_mapper.dart'
    as _i5;
import 'package:newsapi_demo/src/data/mappers/top_headlines_request_mapper.dart'
    as _i6;
import 'package:newsapi_demo/src/data/mappers/top_headlines_response_mapper.dart'
    as _i7;
import 'package:newsapi_demo/src/data/repositories/get_sources_repo_impl.dart'
    as _i9;
import 'package:newsapi_demo/src/data/repositories/get_top_headlines_repo_impl.dart'
    as _i13;
import 'package:newsapi_demo/src/domain/repositories/get_sources_repo.dart'
    as _i8;
import 'package:newsapi_demo/src/domain/repositories/get_top_headlines_repo.dart'
    as _i12;
import 'package:newsapi_demo/src/domain/services/auth_service.dart' as _i3;
import 'package:newsapi_demo/src/domain/usecases/get_sources_usecase.dart'
    as _i11;
import 'package:newsapi_demo/src/domain/usecases/get_top_headlines_usecase.dart'
    as _i14;
import 'package:newsapi_demo/src/presentation/sources/cubits/sources_cubit.dart'
    as _i15;
import 'package:newsapi_demo/src/presentation/top_headlines/cubits/top_headlines_cubit.dart'
    as _i16;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.AuthService>(() => _i3.AuthService());
    gh.factory<_i4.SourcesRequestMapper>(() => _i4.SourcesRequestMapper());
    gh.factory<_i5.SourcesResponseMapper>(() => _i5.SourcesResponseMapper());
    gh.factory<_i6.TopHeadlinesRequestMapper>(
        () => _i6.TopHeadlinesRequestMapper());
    gh.factory<_i7.TopHeadlinesResponseMapper>(
        () => _i7.TopHeadlinesResponseMapper());
    gh.factory<_i8.GetSourcesRepo>(() => _i9.GetSourcesRepoImpl(
          api: gh<_i10.NewsApi>(),
          sourcesRequestMapper: gh<_i4.SourcesRequestMapper>(),
          sourcesResponseMapper: gh<_i5.SourcesResponseMapper>(),
        ));
    gh.factory<_i11.GetSourcesUsecase>(() => _i11.GetSourcesUsecase(
          authService: gh<_i3.AuthService>(),
          getSourcesRepo: gh<_i8.GetSourcesRepo>(),
        ));
    gh.factory<_i12.GetTopHeadlinesRepo>(() => _i13.GetTopHeadlinesRepoImpl(
          api: gh<_i10.NewsApi>(),
          topHeadlinesRequestMapper: gh<_i6.TopHeadlinesRequestMapper>(),
          topHeadlinesResponseMapper: gh<_i7.TopHeadlinesResponseMapper>(),
        ));
    gh.factory<_i14.GetTopHeadlinesUsecase>(() => _i14.GetTopHeadlinesUsecase(
          authService: gh<_i3.AuthService>(),
          getTopHeadlinesRepo: gh<_i12.GetTopHeadlinesRepo>(),
        ));
    gh.factory<_i15.SourcesCubit>(() =>
        _i15.SourcesCubit(getSourcesUsecase: gh<_i11.GetSourcesUsecase>()));
    gh.factory<_i16.TopHeadlinesCubit>(() => _i16.TopHeadlinesCubit(
        getTopHeadlinesUsecase: gh<_i14.GetTopHeadlinesUsecase>()));
    return this;
  }
}
