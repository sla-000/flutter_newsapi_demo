import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_domain_model.freezed.dart';

@freezed
class ArticleDomainModel with _$ArticleDomainModel {
  const factory ArticleDomainModel({
    /// The author of the article
    required String? author,

    /// The headline or title of the article.
    required String? title,

    /// A description or snippet from the article.
    required String? description,

    /// The date and time that the article was published, in UTC (+000)
    required String? publishedAt,

    /// The unformatted content of the article, where available. This is truncated to 200 chars.
    required String? content,

    /// The direct URL to the article.
    required String? url,
  }) = _ArticleDomainModel;
}
