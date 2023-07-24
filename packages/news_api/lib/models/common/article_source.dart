import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_source.freezed.dart';
part 'article_source.g.dart';

@freezed
class ArticleSource with _$ArticleSource {
  const factory ArticleSource({
    String? id,
    String? name,
  }) = _ArticleSource;

  factory ArticleSource.fromJson(Map<String, Object?> json) =>
      _$ArticleSourceFromJson(json);
}
