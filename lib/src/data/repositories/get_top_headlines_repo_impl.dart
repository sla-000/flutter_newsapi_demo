import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:news_api/news_api.dart';

import '../../domain/models/article_domain_model.dart';
import '../../domain/repositories/get_top_headlines_repo.dart';
import '../mappers/top_headlines_request_mapper.dart';
import '../mappers/top_headlines_response_mapper.dart';

@LazySingleton(as: GetTopHeadlinesRepo)
class GetTopHeadlinesRepoImpl implements GetTopHeadlinesRepo {
  GetTopHeadlinesRepoImpl({
    required this.api,
    required this.topHeadlinesRequestMapper,
    required this.topHeadlinesResponseMapper,
  });

  @protected
  final NewsApi api;

  @protected
  final TopHeadlinesRequestMapper topHeadlinesRequestMapper;

  @protected
  final TopHeadlinesResponseMapper topHeadlinesResponseMapper;

  @override
  Future<List<ArticleDomainModel>> getTopHeadlines({
    required String apiKey,
    String? country,
    String? category,
    String? sources,
    String? q,
    int? pageSize,
    int? page,
  }) async {
    final response = await api.getTopHeadlines(
      topHeadlinesRequest: topHeadlinesRequestMapper.call(
        apiKey: apiKey,
        category: category,
        country: country,
        sources: sources,
        page: page,
        pageSize: pageSize,
        q: q,
      ),
    );

    return topHeadlinesResponseMapper.call(response);
  }
}
