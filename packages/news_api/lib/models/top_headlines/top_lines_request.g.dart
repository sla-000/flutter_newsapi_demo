// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_lines_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TopLinesRequest _$$_TopLinesRequestFromJson(Map<String, dynamic> json) =>
    _$_TopLinesRequest(
      apiKey: json['apiKey'] as String,
      country: json['country'] as String?,
      category: json['category'] as String?,
      sources: json['sources'] as String?,
      q: json['q'] as String?,
      pageSize: json['pageSize'] as int?,
      page: json['page'] as int?,
    );

Map<String, dynamic> _$$_TopLinesRequestToJson(_$_TopLinesRequest instance) =>
    <String, dynamic>{
      'apiKey': instance.apiKey,
      'country': instance.country,
      'category': instance.category,
      'sources': instance.sources,
      'q': instance.q,
      'pageSize': instance.pageSize,
      'page': instance.page,
    };
