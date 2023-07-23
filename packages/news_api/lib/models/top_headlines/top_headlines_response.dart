import 'package:freezed_annotation/freezed_annotation.dart';

import 'article_item.dart';

part 'top_headlines_response.freezed.dart';
part 'top_headlines_response.g.dart';

@freezed
class TopHeadlinesResponse with _$TopHeadlinesResponse {
  const factory TopHeadlinesResponse({
    /// If the request was successful or not. Options: ok, error. In the case of error a code and message property will be populated.
    required String status,

    /// The total number of results available for your request.
    required int totalResults,

    /// The results of the request.
    required List<ArticleItem> articles,
  }) = _TopHeadlinesResponse;

  factory TopHeadlinesResponse.fromJson(Map<String, Object?> json) =>
      _$TopHeadlinesResponseFromJson(json);
}
