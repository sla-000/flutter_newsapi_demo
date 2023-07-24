import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

import '../../domain/db/article_storage_db.dart';
import '../../domain/models/article_domain_model.dart';

const _articles = 'articles';

const _author = 'author';
const _title = 'title';
const _description = 'description';
const _publishedAt = 'publishedAt';
const _content = 'content';
const _url = 'url';

@LazySingleton(as: ArticleStorageDb)
class ArticleStorageDbImpl implements ArticleStorageDb {
  late final Database _db;

  @override
  Future<void> init() async {
    final tempDir = await getApplicationSupportDirectory();

    final dbPath = p.join(tempDir.absolute.path, 'test.db');

    // print('@@@ dbPath=$dbPath');

    _db = await openDatabase(
      dbPath,
      version: 1,
      onCreate: (Database db, int version) async {
        await db.execute('CREATE TABLE IF NOT EXISTS $_articles ( '
            'id INTEGER PRIMARY KEY, '
            '$_author TEXT, '
            '$_title TEXT, '
            '$_description TEXT, '
            '$_publishedAt TEXT, '
            '$_content TEXT, '
            '$_url TEXT '
            ')');
        await db.execute(
            'CREATE INDEX IF NOT EXISTS articles_title_publishedAt_index '
            'ON $_articles ( '
            '$_title, '
            '$_publishedAt '
            ')');
      },
    );
  }

  @override
  Future<void> close() => _db.close();

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
    await _db.rawInsert(
      'INSERT INTO $_articles ( '
      '$_author, $_title, $_description, $_publishedAt, $_content, $_url '
      ') '
      'VALUES( '
      '?, ?, ?, ?, ?, ? '
      ')',
      [
        author ?? '',
        title ?? '',
        description ?? '',
        publishedAt ?? '',
        content ?? '',
        url ?? '',
      ],
    );
  }

  @override
  FutureOr<void> removeArticle({
    /// The headline or title of the article.
    required String? title,

    /// The date and time that the article was published, in UTC (+000)
    required String? publishedAt,
  }) async {
    await _db.rawDelete(
      'DELETE FROM $_articles WHERE $_title = ? AND $_publishedAt = ?',
      [
        title ?? '',
        publishedAt ?? '',
      ],
    );
  }

  @override
  FutureOr<bool> checkArticleIsSaved({
    /// The headline or title of the article.
    required String? title,

    /// The date and time that the article was published, in UTC (+000)
    required String? publishedAt,
  }) async {
    final results = await _db.query(_articles,
        where: '$_title = ? AND $_publishedAt = ?',
        whereArgs: [title, publishedAt]);

    return results.isNotEmpty;
  }

  @override
  FutureOr<List<ArticleDomainModel>> loadAllArticles() async {
    final articles = await _db.query(_articles);

    return articles
        .map(
          (article) => ArticleDomainModel(
            title: _tryGetString(article[_title]),
            publishedAt: _tryGetString(article[_publishedAt]),
            description: _tryGetString(article[_description]),
            content: _tryGetString(article[_content]),
            author: _tryGetString(article[_author]),
            url: _tryGetString(article[_url]),
          ),
        )
        .toList(growable: false);
  }

  String? _tryGetString(Object? value) {
    if (value == null) {
      return null;
    }

    if (value is! String) {
      return null;
    }

    if (value.isEmpty) {
      return null;
    }

    return value;
  }
}
