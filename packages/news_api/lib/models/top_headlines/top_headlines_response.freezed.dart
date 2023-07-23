// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_headlines_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TopHeadlinesResponse _$TopHeadlinesResponseFromJson(Map<String, dynamic> json) {
  return _TopHeadlinesResponse.fromJson(json);
}

/// @nodoc
mixin _$TopHeadlinesResponse {
  /// If the request was successful or not. Options: ok, error. In the case of error a code and message property will be populated.
  String get status => throw _privateConstructorUsedError;

  /// The total number of results available for your request.
  int get totalResults => throw _privateConstructorUsedError;

  /// The results of the request.
  List<ArticleItem> get articles => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopHeadlinesResponseCopyWith<TopHeadlinesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopHeadlinesResponseCopyWith<$Res> {
  factory $TopHeadlinesResponseCopyWith(TopHeadlinesResponse value,
          $Res Function(TopHeadlinesResponse) then) =
      _$TopHeadlinesResponseCopyWithImpl<$Res, TopHeadlinesResponse>;
  @useResult
  $Res call({String status, int totalResults, List<ArticleItem> articles});
}

/// @nodoc
class _$TopHeadlinesResponseCopyWithImpl<$Res,
        $Val extends TopHeadlinesResponse>
    implements $TopHeadlinesResponseCopyWith<$Res> {
  _$TopHeadlinesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? totalResults = null,
    Object? articles = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
      articles: null == articles
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<ArticleItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TopHeadlinesResponseCopyWith<$Res>
    implements $TopHeadlinesResponseCopyWith<$Res> {
  factory _$$_TopHeadlinesResponseCopyWith(_$_TopHeadlinesResponse value,
          $Res Function(_$_TopHeadlinesResponse) then) =
      __$$_TopHeadlinesResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, int totalResults, List<ArticleItem> articles});
}

/// @nodoc
class __$$_TopHeadlinesResponseCopyWithImpl<$Res>
    extends _$TopHeadlinesResponseCopyWithImpl<$Res, _$_TopHeadlinesResponse>
    implements _$$_TopHeadlinesResponseCopyWith<$Res> {
  __$$_TopHeadlinesResponseCopyWithImpl(_$_TopHeadlinesResponse _value,
      $Res Function(_$_TopHeadlinesResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? totalResults = null,
    Object? articles = null,
  }) {
    return _then(_$_TopHeadlinesResponse(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
      articles: null == articles
          ? _value._articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<ArticleItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TopHeadlinesResponse implements _TopHeadlinesResponse {
  const _$_TopHeadlinesResponse(
      {required this.status,
      required this.totalResults,
      required final List<ArticleItem> articles})
      : _articles = articles;

  factory _$_TopHeadlinesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_TopHeadlinesResponseFromJson(json);

  /// If the request was successful or not. Options: ok, error. In the case of error a code and message property will be populated.
  @override
  final String status;

  /// The total number of results available for your request.
  @override
  final int totalResults;

  /// The results of the request.
  final List<ArticleItem> _articles;

  /// The results of the request.
  @override
  List<ArticleItem> get articles {
    if (_articles is EqualUnmodifiableListView) return _articles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_articles);
  }

  @override
  String toString() {
    return 'TopHeadlinesResponse(status: $status, totalResults: $totalResults, articles: $articles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TopHeadlinesResponse &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults) &&
            const DeepCollectionEquality().equals(other._articles, _articles));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, totalResults,
      const DeepCollectionEquality().hash(_articles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TopHeadlinesResponseCopyWith<_$_TopHeadlinesResponse> get copyWith =>
      __$$_TopHeadlinesResponseCopyWithImpl<_$_TopHeadlinesResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TopHeadlinesResponseToJson(
      this,
    );
  }
}

abstract class _TopHeadlinesResponse implements TopHeadlinesResponse {
  const factory _TopHeadlinesResponse(
      {required final String status,
      required final int totalResults,
      required final List<ArticleItem> articles}) = _$_TopHeadlinesResponse;

  factory _TopHeadlinesResponse.fromJson(Map<String, dynamic> json) =
      _$_TopHeadlinesResponse.fromJson;

  @override

  /// If the request was successful or not. Options: ok, error. In the case of error a code and message property will be populated.
  String get status;
  @override

  /// The total number of results available for your request.
  int get totalResults;
  @override

  /// The results of the request.
  List<ArticleItem> get articles;
  @override
  @JsonKey(ignore: true)
  _$$_TopHeadlinesResponseCopyWith<_$_TopHeadlinesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
