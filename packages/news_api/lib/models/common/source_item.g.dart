// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'source_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SourceItem _$$_SourceItemFromJson(Map<String, dynamic> json) =>
    _$_SourceItem(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      url: json['url'] as String?,
      category: json['category'] as String?,
      language: json['language'] as String?,
      country: json['country'] as String?,
    );

Map<String, dynamic> _$$_SourceItemToJson(_$_SourceItem instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  writeNotNull('url', instance.url);
  writeNotNull('category', instance.category);
  writeNotNull('language', instance.language);
  writeNotNull('country', instance.country);
  return val;
}
