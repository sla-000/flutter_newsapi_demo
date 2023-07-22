// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sources_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SourcesRequest _$SourcesRequestFromJson(Map<String, dynamic> json) {
  return _SourcesRequest.fromJson(json);
}

/// @nodoc
mixin _$SourcesRequest {
  /// Your API key. Alternatively you can provide this via the X-Api-Key HTTP header.
  String get apiKey => throw _privateConstructorUsedError;

  /// Find sources that display news of this category. Possible options: businessentertainmentgeneralhealthsciencesportstechnology. Default: all categories.
  String? get category => throw _privateConstructorUsedError;

  /// Find sources that display news in a specific language. Possible options: ardeenesfrheitnlnoptrusvudzh. Default: all languages.
  String? get language => throw _privateConstructorUsedError;

  /// Find sources that display news in a specific country. Possible options: aearataubebgbrcachcncocuczdeegfrgbgrhkhuidieilinitjpkrltlvmamxmyngnlnonzphplptrorsrusasesgsiskthtrtwuausveza. Default: all countries.
  String? get country => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SourcesRequestCopyWith<SourcesRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SourcesRequestCopyWith<$Res> {
  factory $SourcesRequestCopyWith(
          SourcesRequest value, $Res Function(SourcesRequest) then) =
      _$SourcesRequestCopyWithImpl<$Res, SourcesRequest>;
  @useResult
  $Res call(
      {String apiKey, String? category, String? language, String? country});
}

/// @nodoc
class _$SourcesRequestCopyWithImpl<$Res, $Val extends SourcesRequest>
    implements $SourcesRequestCopyWith<$Res> {
  _$SourcesRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiKey = null,
    Object? category = freezed,
    Object? language = freezed,
    Object? country = freezed,
  }) {
    return _then(_value.copyWith(
      apiKey: null == apiKey
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SourcesRequestCopyWith<$Res>
    implements $SourcesRequestCopyWith<$Res> {
  factory _$$_SourcesRequestCopyWith(
          _$_SourcesRequest value, $Res Function(_$_SourcesRequest) then) =
      __$$_SourcesRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String apiKey, String? category, String? language, String? country});
}

/// @nodoc
class __$$_SourcesRequestCopyWithImpl<$Res>
    extends _$SourcesRequestCopyWithImpl<$Res, _$_SourcesRequest>
    implements _$$_SourcesRequestCopyWith<$Res> {
  __$$_SourcesRequestCopyWithImpl(
      _$_SourcesRequest _value, $Res Function(_$_SourcesRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiKey = null,
    Object? category = freezed,
    Object? language = freezed,
    Object? country = freezed,
  }) {
    return _then(_$_SourcesRequest(
      apiKey: null == apiKey
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SourcesRequest implements _SourcesRequest {
  const _$_SourcesRequest(
      {required this.apiKey, this.category, this.language, this.country});

  factory _$_SourcesRequest.fromJson(Map<String, dynamic> json) =>
      _$$_SourcesRequestFromJson(json);

  /// Your API key. Alternatively you can provide this via the X-Api-Key HTTP header.
  @override
  final String apiKey;

  /// Find sources that display news of this category. Possible options: businessentertainmentgeneralhealthsciencesportstechnology. Default: all categories.
  @override
  final String? category;

  /// Find sources that display news in a specific language. Possible options: ardeenesfrheitnlnoptrusvudzh. Default: all languages.
  @override
  final String? language;

  /// Find sources that display news in a specific country. Possible options: aearataubebgbrcachcncocuczdeegfrgbgrhkhuidieilinitjpkrltlvmamxmyngnlnonzphplptrorsrusasesgsiskthtrtwuausveza. Default: all countries.
  @override
  final String? country;

  @override
  String toString() {
    return 'SourcesRequest(apiKey: $apiKey, category: $category, language: $language, country: $country)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SourcesRequest &&
            (identical(other.apiKey, apiKey) || other.apiKey == apiKey) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.country, country) || other.country == country));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, apiKey, category, language, country);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SourcesRequestCopyWith<_$_SourcesRequest> get copyWith =>
      __$$_SourcesRequestCopyWithImpl<_$_SourcesRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SourcesRequestToJson(
      this,
    );
  }
}

abstract class _SourcesRequest implements SourcesRequest {
  const factory _SourcesRequest(
      {required final String apiKey,
      final String? category,
      final String? language,
      final String? country}) = _$_SourcesRequest;

  factory _SourcesRequest.fromJson(Map<String, dynamic> json) =
      _$_SourcesRequest.fromJson;

  @override

  /// Your API key. Alternatively you can provide this via the X-Api-Key HTTP header.
  String get apiKey;
  @override

  /// Find sources that display news of this category. Possible options: businessentertainmentgeneralhealthsciencesportstechnology. Default: all categories.
  String? get category;
  @override

  /// Find sources that display news in a specific language. Possible options: ardeenesfrheitnlnoptrusvudzh. Default: all languages.
  String? get language;
  @override

  /// Find sources that display news in a specific country. Possible options: aearataubebgbrcachcncocuczdeegfrgbgrhkhuidieilinitjpkrltlvmamxmyngnlnonzphplptrorsrusasesgsiskthtrtwuausveza. Default: all countries.
  String? get country;
  @override
  @JsonKey(ignore: true)
  _$$_SourcesRequestCopyWith<_$_SourcesRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
