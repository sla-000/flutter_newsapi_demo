// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'article_domain_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ArticleDomainModel {
  /// The author of the article
  String? get author => throw _privateConstructorUsedError;

  /// The headline or title of the article.
  String get title => throw _privateConstructorUsedError;

  /// A description or snippet from the article.
  String get description => throw _privateConstructorUsedError;

  /// The date and time that the article was published, in UTC (+000)
  String get publishedAt => throw _privateConstructorUsedError;

  /// The unformatted content of the article, where available. This is truncated to 200 chars.
  String? get content => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArticleDomainModelCopyWith<ArticleDomainModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleDomainModelCopyWith<$Res> {
  factory $ArticleDomainModelCopyWith(
          ArticleDomainModel value, $Res Function(ArticleDomainModel) then) =
      _$ArticleDomainModelCopyWithImpl<$Res, ArticleDomainModel>;
  @useResult
  $Res call(
      {String? author,
      String title,
      String description,
      String publishedAt,
      String? content});
}

/// @nodoc
class _$ArticleDomainModelCopyWithImpl<$Res, $Val extends ArticleDomainModel>
    implements $ArticleDomainModelCopyWith<$Res> {
  _$ArticleDomainModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? author = freezed,
    Object? title = null,
    Object? description = null,
    Object? publishedAt = null,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as String,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ArticleDomainModelCopyWith<$Res>
    implements $ArticleDomainModelCopyWith<$Res> {
  factory _$$_ArticleDomainModelCopyWith(_$_ArticleDomainModel value,
          $Res Function(_$_ArticleDomainModel) then) =
      __$$_ArticleDomainModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? author,
      String title,
      String description,
      String publishedAt,
      String? content});
}

/// @nodoc
class __$$_ArticleDomainModelCopyWithImpl<$Res>
    extends _$ArticleDomainModelCopyWithImpl<$Res, _$_ArticleDomainModel>
    implements _$$_ArticleDomainModelCopyWith<$Res> {
  __$$_ArticleDomainModelCopyWithImpl(
      _$_ArticleDomainModel _value, $Res Function(_$_ArticleDomainModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? author = freezed,
    Object? title = null,
    Object? description = null,
    Object? publishedAt = null,
    Object? content = freezed,
  }) {
    return _then(_$_ArticleDomainModel(
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as String,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ArticleDomainModel implements _ArticleDomainModel {
  const _$_ArticleDomainModel(
      {required this.author,
      required this.title,
      required this.description,
      required this.publishedAt,
      required this.content});

  /// The author of the article
  @override
  final String? author;

  /// The headline or title of the article.
  @override
  final String title;

  /// A description or snippet from the article.
  @override
  final String description;

  /// The date and time that the article was published, in UTC (+000)
  @override
  final String publishedAt;

  /// The unformatted content of the article, where available. This is truncated to 200 chars.
  @override
  final String? content;

  @override
  String toString() {
    return 'ArticleDomainModel(author: $author, title: $title, description: $description, publishedAt: $publishedAt, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArticleDomainModel &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt) &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, author, title, description, publishedAt, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ArticleDomainModelCopyWith<_$_ArticleDomainModel> get copyWith =>
      __$$_ArticleDomainModelCopyWithImpl<_$_ArticleDomainModel>(
          this, _$identity);
}

abstract class _ArticleDomainModel implements ArticleDomainModel {
  const factory _ArticleDomainModel(
      {required final String? author,
      required final String title,
      required final String description,
      required final String publishedAt,
      required final String? content}) = _$_ArticleDomainModel;

  @override

  /// The author of the article
  String? get author;
  @override

  /// The headline or title of the article.
  String get title;
  @override

  /// A description or snippet from the article.
  String get description;
  @override

  /// The date and time that the article was published, in UTC (+000)
  String get publishedAt;
  @override

  /// The unformatted content of the article, where available. This is truncated to 200 chars.
  String? get content;
  @override
  @JsonKey(ignore: true)
  _$$_ArticleDomainModelCopyWith<_$_ArticleDomainModel> get copyWith =>
      throw _privateConstructorUsedError;
}
