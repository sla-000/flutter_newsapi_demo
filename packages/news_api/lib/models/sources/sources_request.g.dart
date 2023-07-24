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

Map<String, dynamic> _$$_SourcesRequestToJson(_$_SourcesRequest instance) {
  final val = <String, dynamic>{
    'apiKey': instance.apiKey,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('category', instance.category);
  writeNotNull('language', instance.language);
  writeNotNull('country', instance.country);
  return val;
}
