// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ArticleItem _$$_ArticleItemFromJson(Map<String, dynamic> json) =>
    _$_ArticleItem(
      source: json['source'] == null
          ? null
          : ArticleSource.fromJson(json['source'] as Map<String, dynamic>),
      author: json['author'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      url: json['url'] as String?,
      urlToImage: json['urlToImage'] as String?,
      publishedAt: json['publishedAt'] as String?,
      content: json['content'] as String?,
    );

Map<String, dynamic> _$$_ArticleItemToJson(_$_ArticleItem instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('source', instance.source);
  writeNotNull('author', instance.author);
  writeNotNull('title', instance.title);
  writeNotNull('description', instance.description);
  writeNotNull('url', instance.url);
  writeNotNull('urlToImage', instance.urlToImage);
  writeNotNull('publishedAt', instance.publishedAt);
  writeNotNull('content', instance.content);
  return val;
}
