// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_lines_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TopLinesRequest _$TopLinesRequestFromJson(Map<String, dynamic> json) {
  return _TopLinesRequest.fromJson(json);
}

/// @nodoc
mixin _$TopLinesRequest {
  /// Your API key. Alternatively you can provide this via the X-Api-Key HTTP header.
  String get apiKey => throw _privateConstructorUsedError;

  /// The 2-letter ISO 3166-1 code of the country you want to get headlines for. Possible options: aearataubebgbrcachcncocuczdeegfrgbgrhkhuidieilinitjpkrltlvmamxmyngnlnonzphplptrorsrusasesgsiskthtrtwuausveza. Note: you can't mix this param with the sources param.
  String? get country => throw _privateConstructorUsedError;

  /// The category you want to get headlines for. Possible options: businessentertainmentgeneralhealthsciencesportstechnology. Note: you can't mix this param with the sources param.
  String? get category => throw _privateConstructorUsedError;

  /// A comma-seperated string of identifiers for the news sources or blogs you want headlines from. Use the /top-headlines/sources endpoint to locate these programmatically or look at the sources index. Note: you can't mix this param with the country or category params.
  String? get sources => throw _privateConstructorUsedError;

  /// Keywords or a phrase to search for.
  String? get q => throw _privateConstructorUsedError;

  /// The number of results to return per page (request). 20 is the default, 100 is the maximum.
  int? get pageSize => throw _privateConstructorUsedError;

  /// Use this to page through the results if the total results found is greater than the page size.
  int? get page => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopLinesRequestCopyWith<TopLinesRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopLinesRequestCopyWith<$Res> {
  factory $TopLinesRequestCopyWith(
          TopLinesRequest value, $Res Function(TopLinesRequest) then) =
      _$TopLinesRequestCopyWithImpl<$Res, TopLinesRequest>;
  @useResult
  $Res call(
      {String apiKey,
      String? country,
      String? category,
      String? sources,
      String? q,
      int? pageSize,
      int? page});
}

/// @nodoc
class _$TopLinesRequestCopyWithImpl<$Res, $Val extends TopLinesRequest>
    implements $TopLinesRequestCopyWith<$Res> {
  _$TopLinesRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiKey = null,
    Object? country = freezed,
    Object? category = freezed,
    Object? sources = freezed,
    Object? q = freezed,
    Object? pageSize = freezed,
    Object? page = freezed,
  }) {
    return _then(_value.copyWith(
      apiKey: null == apiKey
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      sources: freezed == sources
          ? _value.sources
          : sources // ignore: cast_nullable_to_non_nullable
              as String?,
      q: freezed == q
          ? _value.q
          : q // ignore: cast_nullable_to_non_nullable
              as String?,
      pageSize: freezed == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TopLinesRequestCopyWith<$Res>
    implements $TopLinesRequestCopyWith<$Res> {
  factory _$$_TopLinesRequestCopyWith(
          _$_TopLinesRequest value, $Res Function(_$_TopLinesRequest) then) =
      __$$_TopLinesRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String apiKey,
      String? country,
      String? category,
      String? sources,
      String? q,
      int? pageSize,
      int? page});
}

/// @nodoc
class __$$_TopLinesRequestCopyWithImpl<$Res>
    extends _$TopLinesRequestCopyWithImpl<$Res, _$_TopLinesRequest>
    implements _$$_TopLinesRequestCopyWith<$Res> {
  __$$_TopLinesRequestCopyWithImpl(
      _$_TopLinesRequest _value, $Res Function(_$_TopLinesRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiKey = null,
    Object? country = freezed,
    Object? category = freezed,
    Object? sources = freezed,
    Object? q = freezed,
    Object? pageSize = freezed,
    Object? page = freezed,
  }) {
    return _then(_$_TopLinesRequest(
      apiKey: null == apiKey
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      sources: freezed == sources
          ? _value.sources
          : sources // ignore: cast_nullable_to_non_nullable
              as String?,
      q: freezed == q
          ? _value.q
          : q // ignore: cast_nullable_to_non_nullable
              as String?,
      pageSize: freezed == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TopLinesRequest implements _TopLinesRequest {
  const _$_TopLinesRequest(
      {required this.apiKey,
      this.country,
      this.category,
      this.sources,
      this.q,
      this.pageSize,
      this.page});

  factory _$_TopLinesRequest.fromJson(Map<String, dynamic> json) =>
      _$$_TopLinesRequestFromJson(json);

  /// Your API key. Alternatively you can provide this via the X-Api-Key HTTP header.
  @override
  final String apiKey;

  /// The 2-letter ISO 3166-1 code of the country you want to get headlines for. Possible options: aearataubebgbrcachcncocuczdeegfrgbgrhkhuidieilinitjpkrltlvmamxmyngnlnonzphplptrorsrusasesgsiskthtrtwuausveza. Note: you can't mix this param with the sources param.
  @override
  final String? country;

  /// The category you want to get headlines for. Possible options: businessentertainmentgeneralhealthsciencesportstechnology. Note: you can't mix this param with the sources param.
  @override
  final String? category;

  /// A comma-seperated string of identifiers for the news sources or blogs you want headlines from. Use the /top-headlines/sources endpoint to locate these programmatically or look at the sources index. Note: you can't mix this param with the country or category params.
  @override
  final String? sources;

  /// Keywords or a phrase to search for.
  @override
  final String? q;

  /// The number of results to return per page (request). 20 is the default, 100 is the maximum.
  @override
  final int? pageSize;

  /// Use this to page through the results if the total results found is greater than the page size.
  @override
  final int? page;

  @override
  String toString() {
    return 'TopLinesRequest(apiKey: $apiKey, country: $country, category: $category, sources: $sources, q: $q, pageSize: $pageSize, page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TopLinesRequest &&
            (identical(other.apiKey, apiKey) || other.apiKey == apiKey) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.sources, sources) || other.sources == sources) &&
            (identical(other.q, q) || other.q == q) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.page, page) || other.page == page));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, apiKey, country, category, sources, q, pageSize, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TopLinesRequestCopyWith<_$_TopLinesRequest> get copyWith =>
      __$$_TopLinesRequestCopyWithImpl<_$_TopLinesRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TopLinesRequestToJson(
      this,
    );
  }
}

abstract class _TopLinesRequest implements TopLinesRequest {
  const factory _TopLinesRequest(
      {required final String apiKey,
      final String? country,
      final String? category,
      final String? sources,
      final String? q,
      final int? pageSize,
      final int? page}) = _$_TopLinesRequest;

  factory _TopLinesRequest.fromJson(Map<String, dynamic> json) =
      _$_TopLinesRequest.fromJson;

  @override

  /// Your API key. Alternatively you can provide this via the X-Api-Key HTTP header.
  String get apiKey;
  @override

  /// The 2-letter ISO 3166-1 code of the country you want to get headlines for. Possible options: aearataubebgbrcachcncocuczdeegfrgbgrhkhuidieilinitjpkrltlvmamxmyngnlnonzphplptrorsrusasesgsiskthtrtwuausveza. Note: you can't mix this param with the sources param.
  String? get country;
  @override

  /// The category you want to get headlines for. Possible options: businessentertainmentgeneralhealthsciencesportstechnology. Note: you can't mix this param with the sources param.
  String? get category;
  @override

  /// A comma-seperated string of identifiers for the news sources or blogs you want headlines from. Use the /top-headlines/sources endpoint to locate these programmatically or look at the sources index. Note: you can't mix this param with the country or category params.
  String? get sources;
  @override

  /// Keywords or a phrase to search for.
  String? get q;
  @override

  /// The number of results to return per page (request). 20 is the default, 100 is the maximum.
  int? get pageSize;
  @override

  /// Use this to page through the results if the total results found is greater than the page size.
  int? get page;
  @override
  @JsonKey(ignore: true)
  _$$_TopLinesRequestCopyWith<_$_TopLinesRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
