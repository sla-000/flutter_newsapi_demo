import 'dart:async';

import '../models/article_domain_model.dart';

abstract class ArticleStorageDb {
  FutureOr<void> init();

  FutureOr<void> close();

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
  });

  FutureOr<void> removeArticle({
    /// The headline or title of the article.
    required String? title,

    /// The date and time that the article was published, in UTC (+000)
    required String? publishedAt,
  });

  FutureOr<bool> checkArticleIsSaved({
    /// The headline or title of the article.
    required String? title,

    /// The date and time that the article was published, in UTC (+000)
    required String? publishedAt,
  });

  FutureOr<List<ArticleDomainModel>> loadAllArticles();
}
