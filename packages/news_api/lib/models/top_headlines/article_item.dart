import 'package:freezed_annotation/freezed_annotation.dart';

import '../common/source_item.dart';

part 'article_item.freezed.dart';
part 'article_item.g.dart';

@freezed
class ArticleItem with _$ArticleItem {
  const factory ArticleItem({
    /// The identifier id and a display name name for the source this article came from.
    required SourceItem source,

    /// The author of the article
    required String author,

    /// The headline or title of the article.
    required String title,

    /// A description or snippet from the article.
    required String description,

    /// The direct URL to the article.
    required String url,

    /// The URL to a relevant image for the article.
    required String urlToImage,

    /// The date and time that the article was published, in UTC (+000)
    required String publishedAt,

    /// The unformatted content of the article, where available. This is truncated to 200 chars.
    required String content,
  }) = _ArticleItem;

  factory ArticleItem.fromJson(Map<String, Object?> json) =>
      _$ArticleItemFromJson(json);
}
