import 'package:freezed_annotation/freezed_annotation.dart';

part 'source_item.freezed.dart';
part 'source_item.g.dart';

@freezed
class SourceItem with _$SourceItem {
  const factory SourceItem({
    /// The identifier of the news source. You can use this with our other endpoints.
    required String id,

    /// The name of the news source
    required String name,

    /// A description of the news source
    String? description,

    /// The URL of the homepage.
    String? url,

    /// The type of news to expect from this news source.
    String? category,

    /// The language that this news source writes in.
    String? language,

    /// The country this news source is based in (and primarily writes about).
    String? country,
  }) = _SourceItem;

  factory SourceItem.fromJson(Map<String, Object?> json) =>
      _$SourceItemFromJson(json);
}
