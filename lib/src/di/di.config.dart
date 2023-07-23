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
import 'package:news_api/news_api.dart' as _i9;
import 'package:newsapi_demo/src/data/mappers/sources_request_mapper.dart'
    as _i4;
import 'package:newsapi_demo/src/data/mappers/sources_response_mapper.dart'
    as _i5;
import 'package:newsapi_demo/src/data/repositories/get_sources_repo_impl.dart'
    as _i8;
import 'package:newsapi_demo/src/domain/repositories/get_sources_repo.dart'
    as _i7;
import 'package:newsapi_demo/src/domain/services/auth_service.dart' as _i3;
import 'package:newsapi_demo/src/domain/usecases/get_sources_usecase.dart'
    as _i10;
import 'package:newsapi_demo/src/presentation/sources/cubit/sources_cubit.dart'
    as _i11;
import 'package:newsapi_demo/src/presentation/sources/mappers/sources_state_success_mapper.dart'
    as _i6;

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
    gh.factory<_i6.SourcesStateSuccessMapper>(
        () => _i6.SourcesStateSuccessMapper());
    gh.factory<_i7.GetSourcesRepo>(() => _i8.GetSourcesRepoImpl(
          api: gh<_i9.NewsApi>(),
          sourcesRequestMapper: gh<_i4.SourcesRequestMapper>(),
          sourcesResponseMapper: gh<_i5.SourcesResponseMapper>(),
        ));
    gh.factory<_i10.GetSourcesUsecase>(() => _i10.GetSourcesUsecase(
          authService: gh<_i3.AuthService>(),
          getSourcesRepo: gh<_i7.GetSourcesRepo>(),
        ));
    gh.factory<_i11.SourcesCubit>(() => _i11.SourcesCubit(
          getSourcesUsecase: gh<_i10.GetSourcesUsecase>(),
          sourcesStateSuccessMapper: gh<_i6.SourcesStateSuccessMapper>(),
        ));
    return this;
  }
}
