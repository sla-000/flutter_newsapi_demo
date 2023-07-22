// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'source_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SourceItem _$SourceItemFromJson(Map<String, dynamic> json) {
  return _SourceItem.fromJson(json);
}

/// @nodoc
mixin _$SourceItem {
  /// The identifier of the news source. You can use this with our other endpoints.
  String get id => throw _privateConstructorUsedError;

  /// The name of the news source
  String get name => throw _privateConstructorUsedError;

  /// A description of the news source
  String? get description => throw _privateConstructorUsedError;

  /// The URL of the homepage.
  String? get url => throw _privateConstructorUsedError;

  /// The type of news to expect from this news source.
  String? get category => throw _privateConstructorUsedError;

  /// The language that this news source writes in.
  String? get language => throw _privateConstructorUsedError;

  /// The country this news source is based in (and primarily writes about).
  String? get country => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SourceItemCopyWith<SourceItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SourceItemCopyWith<$Res> {
  factory $SourceItemCopyWith(
          SourceItem value, $Res Function(SourceItem) then) =
      _$SourceItemCopyWithImpl<$Res, SourceItem>;
  @useResult
  $Res call(
      {String id,
      String name,
      String? description,
      String? url,
      String? category,
      String? language,
      String? country});
}

/// @nodoc
class _$SourceItemCopyWithImpl<$Res, $Val extends SourceItem>
    implements $SourceItemCopyWith<$Res> {
  _$SourceItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? url = freezed,
    Object? category = freezed,
    Object? language = freezed,
    Object? country = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$_SourceItemCopyWith<$Res>
    implements $SourceItemCopyWith<$Res> {
  factory _$$_SourceItemCopyWith(
          _$_SourceItem value, $Res Function(_$_SourceItem) then) =
      __$$_SourceItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String? description,
      String? url,
      String? category,
      String? language,
      String? country});
}

/// @nodoc
class __$$_SourceItemCopyWithImpl<$Res>
    extends _$SourceItemCopyWithImpl<$Res, _$_SourceItem>
    implements _$$_SourceItemCopyWith<$Res> {
  __$$_SourceItemCopyWithImpl(
      _$_SourceItem _value, $Res Function(_$_SourceItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? url = freezed,
    Object? category = freezed,
    Object? language = freezed,
    Object? country = freezed,
  }) {
    return _then(_$_SourceItem(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$_SourceItem implements _SourceItem {
  const _$_SourceItem(
      {required this.id,
      required this.name,
      this.description,
      this.url,
      this.category,
      this.language,
      this.country});

  factory _$_SourceItem.fromJson(Map<String, dynamic> json) =>
      _$$_SourceItemFromJson(json);

  /// The identifier of the news source. You can use this with our other endpoints.
  @override
  final String id;

  /// The name of the news source
  @override
  final String name;

  /// A description of the news source
  @override
  final String? description;

  /// The URL of the homepage.
  @override
  final String? url;

  /// The type of news to expect from this news source.
  @override
  final String? category;

  /// The language that this news source writes in.
  @override
  final String? language;

  /// The country this news source is based in (and primarily writes about).
  @override
  final String? country;

  @override
  String toString() {
    return 'SourceItem(id: $id, name: $name, description: $description, url: $url, category: $category, language: $language, country: $country)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SourceItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.country, country) || other.country == country));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, description, url, category, language, country);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SourceItemCopyWith<_$_SourceItem> get copyWith =>
      __$$_SourceItemCopyWithImpl<_$_SourceItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SourceItemToJson(
      this,
    );
  }
}

abstract class _SourceItem implements SourceItem {
  const factory _SourceItem(
      {required final String id,
      required final String name,
      final String? description,
      final String? url,
      final String? category,
      final String? language,
      final String? country}) = _$_SourceItem;

  factory _SourceItem.fromJson(Map<String, dynamic> json) =
      _$_SourceItem.fromJson;

  @override

  /// The identifier of the news source. You can use this with our other endpoints.
  String get id;
  @override

  /// The name of the news source
  String get name;
  @override

  /// A description of the news source
  String? get description;
  @override

  /// The URL of the homepage.
  String? get url;
  @override

  /// The type of news to expect from this news source.
  String? get category;
  @override

  /// The language that this news source writes in.
  String? get language;
  @override

  /// The country this news source is based in (and primarily writes about).
  String? get country;
  @override
  @JsonKey(ignore: true)
  _$$_SourceItemCopyWith<_$_SourceItem> get copyWith =>
      throw _privateConstructorUsedError;
}
