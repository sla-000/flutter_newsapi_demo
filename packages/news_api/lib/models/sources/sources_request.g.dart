// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sources_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SourcesRequest _$$_SourcesRequestFromJson(Map<String, dynamic> json) =>
    _$_SourcesRequest(
      apiKey: json['apiKey'] as String,
      category: json['category'] as String?,
      language: json['language'] as String?,
      country: json['country'] as String?,
    );

Map<String, dynamic> _$$_SourcesRequestToJson(_$_SourcesRequest instance) =>
    <String, dynamic>{
      'apiKey': instance.apiKey,
      'category': instance.category,
      'language': instance.language,
      'country': instance.country,
    };
