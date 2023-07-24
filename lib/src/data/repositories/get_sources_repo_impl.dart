import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:news_api/news_api.dart';

import '../../domain/models/article_source_domain_model.dart';
import '../../domain/repositories/get_sources_repo.dart';
import '../mappers/sources_request_mapper.dart';
import '../mappers/sources_response_mapper.dart';

@LazySingleton(as: GetSourcesRepo)
class GetSourcesRepoImpl implements GetSourcesRepo {
  GetSourcesRepoImpl({
    required this.api,
    required this.sourcesRequestMapper,
    required this.sourcesResponseMapper,
  });

  @protected
  final NewsApi api;

  @protected
  final SourcesRequestMapper sourcesRequestMapper;

  @protected
  final SourcesResponseMapper sourcesResponseMapper;

  @override
  Future<List<ArticleSourceDomainModel>> getSources({
    required String apiKey,
    String? category,
    String language = 'en',
    String country = 'us',
  }) async {
    final response = await api.getSources(
      sourcesRequest: sourcesRequestMapper.call(
        apiKey: apiKey,
        category: category,
        country: country,
        language: language,
      ),
    );

    return sourcesResponseMapper.call(response);
  }
}
