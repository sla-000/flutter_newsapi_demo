import 'package:injectable/injectable.dart';

import '../db/article_storage_db.dart';
import '../models/article_domain_model.dart';

@injectable
class LoadAllArticlesUsecase {
  LoadAllArticlesUsecase({
    required this.articleStorageDb,
  });

  final ArticleStorageDb articleStorageDb;

  Future<List<ArticleDomainModel>> call() async =>
      await articleStorageDb.loadAllArticles();
}
