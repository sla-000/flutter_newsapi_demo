import 'dart:async';

import 'package:injectable/injectable.dart';

import '../../domain/db/article_storage_db.dart';
import '../../domain/models/article_domain_model.dart';

@Injectable(as: ArticleStorageDb)
class ArticleStorageDbImpl implements ArticleStorageDb {
  @override
  FutureOr<void> saveArticle({
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
  }) async {
    // todo Implement
  }

  @override
  FutureOr<void> removeArticle({
    /// The headline or title of the article.
    required String? title,

    /// The date and time that the article was published, in UTC (+000)
    required String? publishedAt,
  }) async {
    // todo Implement
  }

  @override
  FutureOr<bool> checkArticleIsSaved({
    /// The headline or title of the article.
    required String? title,

    /// The date and time that the article was published, in UTC (+000)
    required String? publishedAt,
  }) async {
    // todo Implement
    return false;
  }

  @override
  FutureOr<List<ArticleDomainModel>> loadAllArticles() async {
    // todo Implement
    return [];
  }
}
