import 'package:freezed_annotation/freezed_annotation.dart';

import '../common/source_item.dart';

part 'sources_response.freezed.dart';
part 'sources_response.g.dart';

@freezed
class SourcesResponse with _$SourcesResponse {
  const factory SourcesResponse({
    /// If the request was successful or not. Options: ok, error. In the case of error a code and message property will be populated.
    required String status,

    /// The results of the request.
    required List<SourceItem> sources,
  }) = _SourcesResponse;

  factory SourcesResponse.fromJson(Map<String, Object?> json) =>
      _$SourcesResponseFromJson(json);
}
