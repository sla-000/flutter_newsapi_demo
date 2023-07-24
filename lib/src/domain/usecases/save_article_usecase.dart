import 'package:injectable/injectable.dart';

import '../db/article_storage_db.dart';

@injectable
class SaveArticleUsecase {
  SaveArticleUsecase({
    required this.articleStorageDb,
  });

  final ArticleStorageDb articleStorageDb;

  Future<void> call({
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
  }) async =>
      await articleStorageDb.saveArticle(
        author: author,
        title: title,
        description: description,
        publishedAt: publishedAt,
        content: content,
        url: url,
      );
}
