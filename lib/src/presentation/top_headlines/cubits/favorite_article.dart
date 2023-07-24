import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_article.freezed.dart';

@freezed
class FavoriteArticle with _$FavoriteArticle {
  const factory FavoriteArticle({
    String? title,
    String? publishedAt,
  }) = _FavoriteArticle;
}
