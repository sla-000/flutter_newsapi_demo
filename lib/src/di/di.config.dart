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
import 'package:news_api/news_api.dart' as _i16;
import 'package:newsapi_demo/src/data/db/article_storage_db_impl.dart' as _i4;
import 'package:newsapi_demo/src/data/mappers/sources_request_mapper.dart'
    as _i10;
import 'package:newsapi_demo/src/data/mappers/sources_response_mapper.dart'
    as _i11;
import 'package:newsapi_demo/src/data/mappers/top_headlines_request_mapper.dart'
    as _i12;
import 'package:newsapi_demo/src/data/mappers/top_headlines_response_mapper.dart'
    as _i13;
import 'package:newsapi_demo/src/data/repositories/get_sources_repo_impl.dart'
    as _i15;
import 'package:newsapi_demo/src/data/repositories/get_top_headlines_repo_impl.dart'
    as _i19;
import 'package:newsapi_demo/src/domain/db/article_storage_db.dart' as _i3;
import 'package:newsapi_demo/src/domain/repositories/get_sources_repo.dart'
    as _i14;
import 'package:newsapi_demo/src/domain/repositories/get_top_headlines_repo.dart'
    as _i18;
import 'package:newsapi_demo/src/domain/services/auth_service.dart' as _i5;
import 'package:newsapi_demo/src/domain/usecases/check_article_saved_usecase.dart'
    as _i6;
import 'package:newsapi_demo/src/domain/usecases/get_sources_usecase.dart'
    as _i17;
import 'package:newsapi_demo/src/domain/usecases/get_top_headlines_usecase.dart'
    as _i20;
import 'package:newsapi_demo/src/domain/usecases/load_all_articles_usecase.dart'
    as _i7;
import 'package:newsapi_demo/src/domain/usecases/remove_article_usecase.dart'
    as _i8;
import 'package:newsapi_demo/src/domain/usecases/save_article_usecase.dart'
    as _i9;
import 'package:newsapi_demo/src/presentation/sources/cubits/sources_cubit.dart'
    as _i21;
import 'package:newsapi_demo/src/presentation/top_headlines/cubits/top_headlines_cubit.dart'
    as _i22;

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
    gh.factory<_i3.ArticleStorageDb>(() => _i4.ArticleStorageDbImpl());
    gh.factory<_i5.AuthService>(() => _i5.AuthService());
    gh.factory<_i6.CheckArticleSavedUsecase>(() => _i6.CheckArticleSavedUsecase(
        articleStorageDb: gh<_i3.ArticleStorageDb>()));
    gh.factory<_i7.LoadAllArticlesUsecase>(() => _i7.LoadAllArticlesUsecase(
        articleStorageDb: gh<_i3.ArticleStorageDb>()));
    gh.factory<_i8.RemoveArticleUsecase>(() =>
        _i8.RemoveArticleUsecase(articleStorageDb: gh<_i3.ArticleStorageDb>()));
    gh.factory<_i9.SaveArticleUsecase>(() =>
        _i9.SaveArticleUsecase(articleStorageDb: gh<_i3.ArticleStorageDb>()));
    gh.factory<_i10.SourcesRequestMapper>(() => _i10.SourcesRequestMapper());
    gh.factory<_i11.SourcesResponseMapper>(() => _i11.SourcesResponseMapper());
    gh.factory<_i12.TopHeadlinesRequestMapper>(
        () => _i12.TopHeadlinesRequestMapper());
    gh.factory<_i13.TopHeadlinesResponseMapper>(
        () => _i13.TopHeadlinesResponseMapper());
    gh.factory<_i14.GetSourcesRepo>(() => _i15.GetSourcesRepoImpl(
          api: gh<_i16.NewsApi>(),
          sourcesRequestMapper: gh<_i10.SourcesRequestMapper>(),
          sourcesResponseMapper: gh<_i11.SourcesResponseMapper>(),
        ));
    gh.factory<_i17.GetSourcesUsecase>(() => _i17.GetSourcesUsecase(
          authService: gh<_i5.AuthService>(),
          getSourcesRepo: gh<_i14.GetSourcesRepo>(),
        ));
    gh.factory<_i18.GetTopHeadlinesRepo>(() => _i19.GetTopHeadlinesRepoImpl(
          api: gh<_i16.NewsApi>(),
          topHeadlinesRequestMapper: gh<_i12.TopHeadlinesRequestMapper>(),
          topHeadlinesResponseMapper: gh<_i13.TopHeadlinesResponseMapper>(),
        ));
    gh.factory<_i20.GetTopHeadlinesUsecase>(() => _i20.GetTopHeadlinesUsecase(
          authService: gh<_i5.AuthService>(),
          getTopHeadlinesRepo: gh<_i18.GetTopHeadlinesRepo>(),
        ));
    gh.factory<_i21.SourcesCubit>(() =>
        _i21.SourcesCubit(getSourcesUsecase: gh<_i17.GetSourcesUsecase>()));
    gh.factory<_i22.TopHeadlinesCubit>(() => _i22.TopHeadlinesCubit(
        getTopHeadlinesUsecase: gh<_i20.GetTopHeadlinesUsecase>()));
    return this;
  }
}
