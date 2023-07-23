import 'package:injectable/injectable.dart';
import 'package:news_api/models/sources/sources_request.dart';

@injectable
class SourcesRequestMapper {
  SourcesRequest call({
    required String apiKey,
    String? category,
    String? country,
    String? language,
  }) =>
      SourcesRequest(
        apiKey: apiKey,
        category: category,
        country: country,
        language: language,
      );
}
