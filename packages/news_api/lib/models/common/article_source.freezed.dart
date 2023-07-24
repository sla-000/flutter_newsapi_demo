// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'article_source.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ArticleSource _$ArticleSourceFromJson(Map<String, dynamic> json) {
  return _ArticleSource.fromJson(json);
}

/// @nodoc
mixin _$ArticleSource {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticleSourceCopyWith<ArticleSource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleSourceCopyWith<$Res> {
  factory $ArticleSourceCopyWith(
          ArticleSource value, $Res Function(ArticleSource) then) =
      _$ArticleSourceCopyWithImpl<$Res, ArticleSource>;
  @useResult
  $Res call({String? id, String? name});
}

/// @nodoc
class _$ArticleSourceCopyWithImpl<$Res, $Val extends ArticleSource>
    implements $ArticleSourceCopyWith<$Res> {
  _$ArticleSourceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ArticleSourceCopyWith<$Res>
    implements $ArticleSourceCopyWith<$Res> {
  factory _$$_ArticleSourceCopyWith(
          _$_ArticleSource value, $Res Function(_$_ArticleSource) then) =
      __$$_ArticleSourceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? name});
}

/// @nodoc
class __$$_ArticleSourceCopyWithImpl<$Res>
    extends _$ArticleSourceCopyWithImpl<$Res, _$_ArticleSource>
    implements _$$_ArticleSourceCopyWith<$Res> {
  __$$_ArticleSourceCopyWithImpl(
      _$_ArticleSource _value, $Res Function(_$_ArticleSource) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_ArticleSource(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ArticleSource implements _ArticleSource {
  const _$_ArticleSource({this.id, this.name});

  factory _$_ArticleSource.fromJson(Map<String, dynamic> json) =>
      _$$_ArticleSourceFromJson(json);

  @override
  final String? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'ArticleSource(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArticleSource &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ArticleSourceCopyWith<_$_ArticleSource> get copyWith =>
      __$$_ArticleSourceCopyWithImpl<_$_ArticleSource>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArticleSourceToJson(
      this,
    );
  }
}

abstract class _ArticleSource implements ArticleSource {
  const factory _ArticleSource({final String? id, final String? name}) =
      _$_ArticleSource;

  factory _ArticleSource.fromJson(Map<String, dynamic> json) =
      _$_ArticleSource.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_ArticleSourceCopyWith<_$_ArticleSource> get copyWith =>
      throw _privateConstructorUsedError;
}
