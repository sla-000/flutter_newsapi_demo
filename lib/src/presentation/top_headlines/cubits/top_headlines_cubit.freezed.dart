// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_headlines_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TopHeadlinesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ArticleDomainModel> articles) success,
    required TResult Function(Exception error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ArticleDomainModel> articles)? success,
    TResult? Function(Exception error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ArticleDomainModel> articles)? success,
    TResult Function(Exception error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TopHeadlinesStateInitial value) initial,
    required TResult Function(TopHeadlinesStateLoading value) loading,
    required TResult Function(TopHeadlinesStateSuccess value) success,
    required TResult Function(TopHeadlinesStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TopHeadlinesStateInitial value)? initial,
    TResult? Function(TopHeadlinesStateLoading value)? loading,
    TResult? Function(TopHeadlinesStateSuccess value)? success,
    TResult? Function(TopHeadlinesStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TopHeadlinesStateInitial value)? initial,
    TResult Function(TopHeadlinesStateLoading value)? loading,
    TResult Function(TopHeadlinesStateSuccess value)? success,
    TResult Function(TopHeadlinesStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopHeadlinesStateCopyWith<$Res> {
  factory $TopHeadlinesStateCopyWith(
          TopHeadlinesState value, $Res Function(TopHeadlinesState) then) =
      _$TopHeadlinesStateCopyWithImpl<$Res, TopHeadlinesState>;
}

/// @nodoc
class _$TopHeadlinesStateCopyWithImpl<$Res, $Val extends TopHeadlinesState>
    implements $TopHeadlinesStateCopyWith<$Res> {
  _$TopHeadlinesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TopHeadlinesStateInitialCopyWith<$Res> {
  factory _$$TopHeadlinesStateInitialCopyWith(_$TopHeadlinesStateInitial value,
          $Res Function(_$TopHeadlinesStateInitial) then) =
      __$$TopHeadlinesStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TopHeadlinesStateInitialCopyWithImpl<$Res>
    extends _$TopHeadlinesStateCopyWithImpl<$Res, _$TopHeadlinesStateInitial>
    implements _$$TopHeadlinesStateInitialCopyWith<$Res> {
  __$$TopHeadlinesStateInitialCopyWithImpl(_$TopHeadlinesStateInitial _value,
      $Res Function(_$TopHeadlinesStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TopHeadlinesStateInitial implements TopHeadlinesStateInitial {
  const _$TopHeadlinesStateInitial();

  @override
  String toString() {
    return 'TopHeadlinesState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopHeadlinesStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ArticleDomainModel> articles) success,
    required TResult Function(Exception error, StackTrace stackTrace) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ArticleDomainModel> articles)? success,
    TResult? Function(Exception error, StackTrace stackTrace)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ArticleDomainModel> articles)? success,
    TResult Function(Exception error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TopHeadlinesStateInitial value) initial,
    required TResult Function(TopHeadlinesStateLoading value) loading,
    required TResult Function(TopHeadlinesStateSuccess value) success,
    required TResult Function(TopHeadlinesStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TopHeadlinesStateInitial value)? initial,
    TResult? Function(TopHeadlinesStateLoading value)? loading,
    TResult? Function(TopHeadlinesStateSuccess value)? success,
    TResult? Function(TopHeadlinesStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TopHeadlinesStateInitial value)? initial,
    TResult Function(TopHeadlinesStateLoading value)? loading,
    TResult Function(TopHeadlinesStateSuccess value)? success,
    TResult Function(TopHeadlinesStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class TopHeadlinesStateInitial implements TopHeadlinesState {
  const factory TopHeadlinesStateInitial() = _$TopHeadlinesStateInitial;
}

/// @nodoc
abstract class _$$TopHeadlinesStateLoadingCopyWith<$Res> {
  factory _$$TopHeadlinesStateLoadingCopyWith(_$TopHeadlinesStateLoading value,
          $Res Function(_$TopHeadlinesStateLoading) then) =
      __$$TopHeadlinesStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TopHeadlinesStateLoadingCopyWithImpl<$Res>
    extends _$TopHeadlinesStateCopyWithImpl<$Res, _$TopHeadlinesStateLoading>
    implements _$$TopHeadlinesStateLoadingCopyWith<$Res> {
  __$$TopHeadlinesStateLoadingCopyWithImpl(_$TopHeadlinesStateLoading _value,
      $Res Function(_$TopHeadlinesStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TopHeadlinesStateLoading implements TopHeadlinesStateLoading {
  const _$TopHeadlinesStateLoading();

  @override
  String toString() {
    return 'TopHeadlinesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopHeadlinesStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ArticleDomainModel> articles) success,
    required TResult Function(Exception error, StackTrace stackTrace) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ArticleDomainModel> articles)? success,
    TResult? Function(Exception error, StackTrace stackTrace)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ArticleDomainModel> articles)? success,
    TResult Function(Exception error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TopHeadlinesStateInitial value) initial,
    required TResult Function(TopHeadlinesStateLoading value) loading,
    required TResult Function(TopHeadlinesStateSuccess value) success,
    required TResult Function(TopHeadlinesStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TopHeadlinesStateInitial value)? initial,
    TResult? Function(TopHeadlinesStateLoading value)? loading,
    TResult? Function(TopHeadlinesStateSuccess value)? success,
    TResult? Function(TopHeadlinesStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TopHeadlinesStateInitial value)? initial,
    TResult Function(TopHeadlinesStateLoading value)? loading,
    TResult Function(TopHeadlinesStateSuccess value)? success,
    TResult Function(TopHeadlinesStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TopHeadlinesStateLoading implements TopHeadlinesState {
  const factory TopHeadlinesStateLoading() = _$TopHeadlinesStateLoading;
}

/// @nodoc
abstract class _$$TopHeadlinesStateSuccessCopyWith<$Res> {
  factory _$$TopHeadlinesStateSuccessCopyWith(_$TopHeadlinesStateSuccess value,
          $Res Function(_$TopHeadlinesStateSuccess) then) =
      __$$TopHeadlinesStateSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ArticleDomainModel> articles});
}

/// @nodoc
class __$$TopHeadlinesStateSuccessCopyWithImpl<$Res>
    extends _$TopHeadlinesStateCopyWithImpl<$Res, _$TopHeadlinesStateSuccess>
    implements _$$TopHeadlinesStateSuccessCopyWith<$Res> {
  __$$TopHeadlinesStateSuccessCopyWithImpl(_$TopHeadlinesStateSuccess _value,
      $Res Function(_$TopHeadlinesStateSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articles = null,
  }) {
    return _then(_$TopHeadlinesStateSuccess(
      articles: null == articles
          ? _value._articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<ArticleDomainModel>,
    ));
  }
}

/// @nodoc

class _$TopHeadlinesStateSuccess implements TopHeadlinesStateSuccess {
  const _$TopHeadlinesStateSuccess(
      {required final List<ArticleDomainModel> articles})
      : _articles = articles;

  final List<ArticleDomainModel> _articles;
  @override
  List<ArticleDomainModel> get articles {
    if (_articles is EqualUnmodifiableListView) return _articles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_articles);
  }

  @override
  String toString() {
    return 'TopHeadlinesState.success(articles: $articles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopHeadlinesStateSuccess &&
            const DeepCollectionEquality().equals(other._articles, _articles));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_articles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopHeadlinesStateSuccessCopyWith<_$TopHeadlinesStateSuccess>
      get copyWith =>
          __$$TopHeadlinesStateSuccessCopyWithImpl<_$TopHeadlinesStateSuccess>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ArticleDomainModel> articles) success,
    required TResult Function(Exception error, StackTrace stackTrace) error,
  }) {
    return success(articles);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ArticleDomainModel> articles)? success,
    TResult? Function(Exception error, StackTrace stackTrace)? error,
  }) {
    return success?.call(articles);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ArticleDomainModel> articles)? success,
    TResult Function(Exception error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(articles);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TopHeadlinesStateInitial value) initial,
    required TResult Function(TopHeadlinesStateLoading value) loading,
    required TResult Function(TopHeadlinesStateSuccess value) success,
    required TResult Function(TopHeadlinesStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TopHeadlinesStateInitial value)? initial,
    TResult? Function(TopHeadlinesStateLoading value)? loading,
    TResult? Function(TopHeadlinesStateSuccess value)? success,
    TResult? Function(TopHeadlinesStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TopHeadlinesStateInitial value)? initial,
    TResult Function(TopHeadlinesStateLoading value)? loading,
    TResult Function(TopHeadlinesStateSuccess value)? success,
    TResult Function(TopHeadlinesStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class TopHeadlinesStateSuccess implements TopHeadlinesState {
  const factory TopHeadlinesStateSuccess(
          {required final List<ArticleDomainModel> articles}) =
      _$TopHeadlinesStateSuccess;

  List<ArticleDomainModel> get articles;
  @JsonKey(ignore: true)
  _$$TopHeadlinesStateSuccessCopyWith<_$TopHeadlinesStateSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TopHeadlinesStateErrorCopyWith<$Res> {
  factory _$$TopHeadlinesStateErrorCopyWith(_$TopHeadlinesStateError value,
          $Res Function(_$TopHeadlinesStateError) then) =
      __$$TopHeadlinesStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Exception error, StackTrace stackTrace});
}

/// @nodoc
class __$$TopHeadlinesStateErrorCopyWithImpl<$Res>
    extends _$TopHeadlinesStateCopyWithImpl<$Res, _$TopHeadlinesStateError>
    implements _$$TopHeadlinesStateErrorCopyWith<$Res> {
  __$$TopHeadlinesStateErrorCopyWithImpl(_$TopHeadlinesStateError _value,
      $Res Function(_$TopHeadlinesStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$TopHeadlinesStateError(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Exception,
      stackTrace: null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$TopHeadlinesStateError implements TopHeadlinesStateError {
  const _$TopHeadlinesStateError(
      {required this.error, required this.stackTrace});

  @override
  final Exception error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'TopHeadlinesState.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopHeadlinesStateError &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopHeadlinesStateErrorCopyWith<_$TopHeadlinesStateError> get copyWith =>
      __$$TopHeadlinesStateErrorCopyWithImpl<_$TopHeadlinesStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ArticleDomainModel> articles) success,
    required TResult Function(Exception error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ArticleDomainModel> articles)? success,
    TResult? Function(Exception error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ArticleDomainModel> articles)? success,
    TResult Function(Exception error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TopHeadlinesStateInitial value) initial,
    required TResult Function(TopHeadlinesStateLoading value) loading,
    required TResult Function(TopHeadlinesStateSuccess value) success,
    required TResult Function(TopHeadlinesStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TopHeadlinesStateInitial value)? initial,
    TResult? Function(TopHeadlinesStateLoading value)? loading,
    TResult? Function(TopHeadlinesStateSuccess value)? success,
    TResult? Function(TopHeadlinesStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TopHeadlinesStateInitial value)? initial,
    TResult Function(TopHeadlinesStateLoading value)? loading,
    TResult Function(TopHeadlinesStateSuccess value)? success,
    TResult Function(TopHeadlinesStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class TopHeadlinesStateError implements TopHeadlinesState {
  const factory TopHeadlinesStateError(
      {required final Exception error,
      required final StackTrace stackTrace}) = _$TopHeadlinesStateError;

  Exception get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$TopHeadlinesStateErrorCopyWith<_$TopHeadlinesStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
