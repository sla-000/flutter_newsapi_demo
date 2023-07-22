// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'article_source_domain_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ArticleSourceDomainModel {
  /// The identifier of the news source. You can use this with our other endpoints.
  String get id => throw _privateConstructorUsedError;

  /// The name of the news source
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArticleSourceDomainModelCopyWith<ArticleSourceDomainModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleSourceDomainModelCopyWith<$Res> {
  factory $ArticleSourceDomainModelCopyWith(ArticleSourceDomainModel value,
          $Res Function(ArticleSourceDomainModel) then) =
      _$ArticleSourceDomainModelCopyWithImpl<$Res, ArticleSourceDomainModel>;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$ArticleSourceDomainModelCopyWithImpl<$Res,
        $Val extends ArticleSourceDomainModel>
    implements $ArticleSourceDomainModelCopyWith<$Res> {
  _$ArticleSourceDomainModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ArticleSourceDomainModelCopyWith<$Res>
    implements $ArticleSourceDomainModelCopyWith<$Res> {
  factory _$$_ArticleSourceDomainModelCopyWith(
          _$_ArticleSourceDomainModel value,
          $Res Function(_$_ArticleSourceDomainModel) then) =
      __$$_ArticleSourceDomainModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$$_ArticleSourceDomainModelCopyWithImpl<$Res>
    extends _$ArticleSourceDomainModelCopyWithImpl<$Res,
        _$_ArticleSourceDomainModel>
    implements _$$_ArticleSourceDomainModelCopyWith<$Res> {
  __$$_ArticleSourceDomainModelCopyWithImpl(_$_ArticleSourceDomainModel _value,
      $Res Function(_$_ArticleSourceDomainModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$_ArticleSourceDomainModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ArticleSourceDomainModel implements _ArticleSourceDomainModel {
  const _$_ArticleSourceDomainModel({required this.id, required this.name});

  /// The identifier of the news source. You can use this with our other endpoints.
  @override
  final String id;

  /// The name of the news source
  @override
  final String name;

  @override
  String toString() {
    return 'ArticleSourceDomainModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArticleSourceDomainModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ArticleSourceDomainModelCopyWith<_$_ArticleSourceDomainModel>
      get copyWith => __$$_ArticleSourceDomainModelCopyWithImpl<
          _$_ArticleSourceDomainModel>(this, _$identity);
}

abstract class _ArticleSourceDomainModel implements ArticleSourceDomainModel {
  const factory _ArticleSourceDomainModel(
      {required final String id,
      required final String name}) = _$_ArticleSourceDomainModel;

  @override

  /// The identifier of the news source. You can use this with our other endpoints.
  String get id;
  @override

  /// The name of the news source
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_ArticleSourceDomainModelCopyWith<_$_ArticleSourceDomainModel>
      get copyWith => throw _privateConstructorUsedError;
}
