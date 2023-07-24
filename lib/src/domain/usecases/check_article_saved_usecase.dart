import 'package:injectable/injectable.dart';

import '../db/article_storage_db.dart';

@injectable
class CheckArticleSavedUsecase {
  CheckArticleSavedUsecase({
    required this.articleStorageDb,
  });

  final ArticleStorageDb articleStorageDb;

  Future<bool> call({
    /// The author of the article
    required String? author,

    /// The headline or title of the article.
    required String? title,

    /// The date and time that the article was published, in UTC (+000)
    required String? publishedAt,
  }) async =>
      await articleStorageDb.checkArticleIsSaved(
        author: author,
        title: title,
        publishedAt: publishedAt,
      );
}
