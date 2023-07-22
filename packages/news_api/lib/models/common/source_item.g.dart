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

Map<String, dynamic> _$$_SourceItemToJson(_$_SourceItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'url': instance.url,
      'category': instance.category,
      'language': instance.language,
      'country': instance.country,
    };
