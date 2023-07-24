// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ArticleSource _$$_ArticleSourceFromJson(Map<String, dynamic> json) =>
    _$_ArticleSource(
      id: json['id'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_ArticleSourceToJson(_$_ArticleSource instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  return val;
}
