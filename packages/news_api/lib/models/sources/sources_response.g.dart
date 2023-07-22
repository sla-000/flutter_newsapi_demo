// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sources_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SourcesResponse _$$_SourcesResponseFromJson(Map<String, dynamic> json) =>
    _$_SourcesResponse(
      status: json['status'] as String,
      sources: (json['sources'] as List<dynamic>)
          .map((e) => SourceItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SourcesResponseToJson(_$_SourcesResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'sources': instance.sources,
    };
