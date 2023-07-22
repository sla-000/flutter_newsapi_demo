import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_source_domain_model.freezed.dart';

@freezed
class ArticleSourceDomainModel with _$ArticleSourceDomainModel {
  const factory ArticleSourceDomainModel({
    /// The identifier of the news source. You can use this with our other endpoints.
    required String id,

    /// The name of the news source
    required String name,
  }) = _ArticleSourceDomainModel;
}
