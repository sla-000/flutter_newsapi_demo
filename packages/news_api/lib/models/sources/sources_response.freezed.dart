// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sources_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SourcesResponse _$SourcesResponseFromJson(Map<String, dynamic> json) {
  return _SourcesResponse.fromJson(json);
}

/// @nodoc
mixin _$SourcesResponse {
  /// If the request was successful or not. Options: ok, error. In the case of error a code and message property will be populated.
  String get status => throw _privateConstructorUsedError;

  /// The results of the request.
  List<SourceItem> get sources => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SourcesResponseCopyWith<SourcesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SourcesResponseCopyWith<$Res> {
  factory $SourcesResponseCopyWith(
          SourcesResponse value, $Res Function(SourcesResponse) then) =
      _$SourcesResponseCopyWithImpl<$Res, SourcesResponse>;
  @useResult
  $Res call({String status, List<SourceItem> sources});
}

/// @nodoc
class _$SourcesResponseCopyWithImpl<$Res, $Val extends SourcesResponse>
    implements $SourcesResponseCopyWith<$Res> {
  _$SourcesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? sources = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      sources: null == sources
          ? _value.sources
          : sources // ignore: cast_nullable_to_non_nullable
              as List<SourceItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SourcesResponseCopyWith<$Res>
    implements $SourcesResponseCopyWith<$Res> {
  factory _$$_SourcesResponseCopyWith(
          _$_SourcesResponse value, $Res Function(_$_SourcesResponse) then) =
      __$$_SourcesResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, List<SourceItem> sources});
}

/// @nodoc
class __$$_SourcesResponseCopyWithImpl<$Res>
    extends _$SourcesResponseCopyWithImpl<$Res, _$_SourcesResponse>
    implements _$$_SourcesResponseCopyWith<$Res> {
  __$$_SourcesResponseCopyWithImpl(
      _$_SourcesResponse _value, $Res Function(_$_SourcesResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? sources = null,
  }) {
    return _then(_$_SourcesResponse(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      sources: null == sources
          ? _value._sources
          : sources // ignore: cast_nullable_to_non_nullable
              as List<SourceItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SourcesResponse implements _SourcesResponse {
  const _$_SourcesResponse(
      {required this.status, required final List<SourceItem> sources})
      : _sources = sources;

  factory _$_SourcesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SourcesResponseFromJson(json);

  /// If the request was successful or not. Options: ok, error. In the case of error a code and message property will be populated.
  @override
  final String status;

  /// The results of the request.
  final List<SourceItem> _sources;

  /// The results of the request.
  @override
  List<SourceItem> get sources {
    if (_sources is EqualUnmodifiableListView) return _sources;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sources);
  }

  @override
  String toString() {
    return 'SourcesResponse(status: $status, sources: $sources)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SourcesResponse &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._sources, _sources));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_sources));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SourcesResponseCopyWith<_$_SourcesResponse> get copyWith =>
      __$$_SourcesResponseCopyWithImpl<_$_SourcesResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SourcesResponseToJson(
      this,
    );
  }
}

abstract class _SourcesResponse implements SourcesResponse {
  const factory _SourcesResponse(
      {required final String status,
      required final List<SourceItem> sources}) = _$_SourcesResponse;

  factory _SourcesResponse.fromJson(Map<String, dynamic> json) =
      _$_SourcesResponse.fromJson;

  @override

  /// If the request was successful or not. Options: ok, error. In the case of error a code and message property will be populated.
  String get status;
  @override

  /// The results of the request.
  List<SourceItem> get sources;
  @override
  @JsonKey(ignore: true)
  _$$_SourcesResponseCopyWith<_$_SourcesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
