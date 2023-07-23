// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_headlines_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TopHeadlinesResponse _$$_TopHeadlinesResponseFromJson(
        Map<String, dynamic> json) =>
    _$_TopHeadlinesResponse(
      status: json['status'] as String,
      totalResults: json['totalResults'] as int,
      articles: (json['articles'] as List<dynamic>)
          .map((e) => ArticleItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TopHeadlinesResponseToJson(
        _$_TopHeadlinesResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'totalResults': instance.totalResults,
      'articles': instance.articles,
    };
