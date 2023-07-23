import 'package:injectable/injectable.dart';
import 'package:news_api/models/top_headlines/top_headlines_request.dart';

@injectable
class TopHeadlinesRequestMapper {
  TopHeadlinesRequest call({
    required String apiKey,
    String? country,
    String? category,
    String? sources,
    String? q,
    int? pageSize,
    int? page,
  }) =>
      TopHeadlinesRequest(
        apiKey: apiKey,
        category: category,
        country: country,
        sources: sources,
        q: q,
        pageSize: pageSize,
        page: page,
      );
}
