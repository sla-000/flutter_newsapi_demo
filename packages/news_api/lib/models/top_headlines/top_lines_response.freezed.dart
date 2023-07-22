// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_lines_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TopLinesResponse _$TopLinesResponseFromJson(Map<String, dynamic> json) {
  return _TopLinesResponse.fromJson(json);
}

/// @nodoc
mixin _$TopLinesResponse {
  /// If the request was successful or not. Options: ok, error. In the case of error a code and message property will be populated.
  String get status => throw _privateConstructorUsedError;

  /// The total number of results available for your request.
  int get totalResults => throw _privateConstructorUsedError;

  /// The results of the request.
  List<ArticleItem> get articles => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopLinesResponseCopyWith<TopLinesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopLinesResponseCopyWith<$Res> {
  factory $TopLinesResponseCopyWith(
          TopLinesResponse value, $Res Function(TopLinesResponse) then) =
      _$TopLinesResponseCopyWithImpl<$Res, TopLinesResponse>;
  @useResult
  $Res call({String status, int totalResults, List<ArticleItem> articles});
}

/// @nodoc
class _$TopLinesResponseCopyWithImpl<$Res, $Val extends TopLinesResponse>
    implements $TopLinesResponseCopyWith<$Res> {
  _$TopLinesResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$_TopLinesResponseCopyWith<$Res>
    implements $TopLinesResponseCopyWith<$Res> {
  factory _$$_TopLinesResponseCopyWith(
          _$_TopLinesResponse value, $Res Function(_$_TopLinesResponse) then) =
      __$$_TopLinesResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, int totalResults, List<ArticleItem> articles});
}

/// @nodoc
class __$$_TopLinesResponseCopyWithImpl<$Res>
    extends _$TopLinesResponseCopyWithImpl<$Res, _$_TopLinesResponse>
    implements _$$_TopLinesResponseCopyWith<$Res> {
  __$$_TopLinesResponseCopyWithImpl(
      _$_TopLinesResponse _value, $Res Function(_$_TopLinesResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? totalResults = null,
    Object? articles = null,
  }) {
    return _then(_$_TopLinesResponse(
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
class _$_TopLinesResponse implements _TopLinesResponse {
  const _$_TopLinesResponse(
      {required this.status,
      required this.totalResults,
      required final List<ArticleItem> articles})
      : _articles = articles;

  factory _$_TopLinesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_TopLinesResponseFromJson(json);

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
    return 'TopLinesResponse(status: $status, totalResults: $totalResults, articles: $articles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TopLinesResponse &&
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
  _$$_TopLinesResponseCopyWith<_$_TopLinesResponse> get copyWith =>
      __$$_TopLinesResponseCopyWithImpl<_$_TopLinesResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TopLinesResponseToJson(
      this,
    );
  }
}

abstract class _TopLinesResponse implements TopLinesResponse {
  const factory _TopLinesResponse(
      {required final String status,
      required final int totalResults,
      required final List<ArticleItem> articles}) = _$_TopLinesResponse;

  factory _TopLinesResponse.fromJson(Map<String, dynamic> json) =
      _$_TopLinesResponse.fromJson;

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
  _$$_TopLinesResponseCopyWith<_$_TopLinesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
