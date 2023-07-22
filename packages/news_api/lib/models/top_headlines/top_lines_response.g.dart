// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_lines_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TopLinesResponse _$$_TopLinesResponseFromJson(Map<String, dynamic> json) =>
    _$_TopLinesResponse(
      status: json['status'] as String,
      totalResults: json['totalResults'] as int,
      articles: (json['articles'] as List<dynamic>)
          .map((e) => ArticleItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TopLinesResponseToJson(_$_TopLinesResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'totalResults': instance.totalResults,
      'articles': instance.articles,
    };
