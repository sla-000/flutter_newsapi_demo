import 'package:freezed_annotation/freezed_annotation.dart';

part 'top_lines_request.freezed.dart';
part 'top_lines_request.g.dart';

@freezed
class TopLinesRequest with _$TopLinesRequest {
  const factory TopLinesRequest({
    /// Your API key. Alternatively you can provide this via the X-Api-Key HTTP header.
    required String apiKey,

    /// The 2-letter ISO 3166-1 code of the country you want to get headlines for. Possible options: aearataubebgbrcachcncocuczdeegfrgbgrhkhuidieilinitjpkrltlvmamxmyngnlnonzphplptrorsrusasesgsiskthtrtwuausveza. Note: you can't mix this param with the sources param.
    String? country,

    /// The category you want to get headlines for. Possible options: businessentertainmentgeneralhealthsciencesportstechnology. Note: you can't mix this param with the sources param.
    String? category,

    /// A comma-seperated string of identifiers for the news sources or blogs you want headlines from. Use the /top-headlines/sources endpoint to locate these programmatically or look at the sources index. Note: you can't mix this param with the country or category params.
    String? sources,

    /// Keywords or a phrase to search for.
    String? q,

    /// The number of results to return per page (request). 20 is the default, 100 is the maximum.
    int? pageSize,

    /// Use this to page through the results if the total results found is greater than the page size.
    int? page,
  }) = _TopLinesRequest;

  factory TopLinesRequest.fromJson(Map<String, Object?> json) =>
      _$TopLinesRequestFromJson(json);
}
