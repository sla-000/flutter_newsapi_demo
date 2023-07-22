import 'package:freezed_annotation/freezed_annotation.dart';

part 'sources_request.freezed.dart';
part 'sources_request.g.dart';

@freezed
class SourcesRequest with _$SourcesRequest {
  const factory SourcesRequest({
    /// Your API key. Alternatively you can provide this via the X-Api-Key HTTP header.
    required String apiKey,

    /// Find sources that display news of this category. Possible options: businessentertainmentgeneralhealthsciencesportstechnology. Default: all categories.
    String? category,

    /// Find sources that display news in a specific language. Possible options: ardeenesfrheitnlnoptrusvudzh. Default: all languages.
    String? language,

    /// Find sources that display news in a specific country. Possible options: aearataubebgbrcachcncocuczdeegfrgbgrhkhuidieilinitjpkrltlvmamxmyngnlnonzphplptrorsrusasesgsiskthtrtwuausveza. Default: all countries.
    String? country,
  }) = _SourcesRequest;

  factory SourcesRequest.fromJson(Map<String, Object?> json) =>
      _$SourcesRequestFromJson(json);
}
