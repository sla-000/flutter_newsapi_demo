// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'article_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ArticleItem _$ArticleItemFromJson(Map<String, dynamic> json) {
  return _ArticleItem.fromJson(json);
}

/// @nodoc
mixin _$ArticleItem {
  /// The identifier id and a display name name for the source this article came from.
  ArticleSource? get source => throw _privateConstructorUsedError;

  /// The author of the article
  String? get author => throw _privateConstructorUsedError;

  /// The headline or title of the article.
  String? get title => throw _privateConstructorUsedError;

  /// A description or snippet from the article.
  String? get description => throw _privateConstructorUsedError;

  /// The direct URL to the article.
  String? get url => throw _privateConstructorUsedError;

  /// The URL to a relevant image for the article.
  String? get urlToImage => throw _privateConstructorUsedError;

  /// The date and time that the article was published, in UTC (+000)
  String? get publishedAt => throw _privateConstructorUsedError;

  /// The unformatted content of the article, where available. This is truncated to 200 chars.
  String? get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticleItemCopyWith<ArticleItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleItemCopyWith<$Res> {
  factory $ArticleItemCopyWith(
          ArticleItem value, $Res Function(ArticleItem) then) =
      _$ArticleItemCopyWithImpl<$Res, ArticleItem>;
  @useResult
  $Res call(
      {ArticleSource? source,
      String? author,
      String? title,
      String? description,
      String? url,
      String? urlToImage,
      String? publishedAt,
      String? content});

  $ArticleSourceCopyWith<$Res>? get source;
}

/// @nodoc
class _$ArticleItemCopyWithImpl<$Res, $Val extends ArticleItem>
    implements $ArticleItemCopyWith<$Res> {
  _$ArticleItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = freezed,
    Object? author = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? url = freezed,
    Object? urlToImage = freezed,
    Object? publishedAt = freezed,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as ArticleSource?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      urlToImage: freezed == urlToImage
          ? _value.urlToImage
          : urlToImage // ignore: cast_nullable_to_non_nullable
              as String?,
      publishedAt: freezed == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ArticleSourceCopyWith<$Res>? get source {
    if (_value.source == null) {
      return null;
    }

    return $ArticleSourceCopyWith<$Res>(_value.source!, (value) {
      return _then(_value.copyWith(source: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ArticleItemCopyWith<$Res>
    implements $ArticleItemCopyWith<$Res> {
  factory _$$_ArticleItemCopyWith(
          _$_ArticleItem value, $Res Function(_$_ArticleItem) then) =
      __$$_ArticleItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ArticleSource? source,
      String? author,
      String? title,
      String? description,
      String? url,
      String? urlToImage,
      String? publishedAt,
      String? content});

  @override
  $ArticleSourceCopyWith<$Res>? get source;
}

/// @nodoc
class __$$_ArticleItemCopyWithImpl<$Res>
    extends _$ArticleItemCopyWithImpl<$Res, _$_ArticleItem>
    implements _$$_ArticleItemCopyWith<$Res> {
  __$$_ArticleItemCopyWithImpl(
      _$_ArticleItem _value, $Res Function(_$_ArticleItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = freezed,
    Object? author = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? url = freezed,
    Object? urlToImage = freezed,
    Object? publishedAt = freezed,
    Object? content = freezed,
  }) {
    return _then(_$_ArticleItem(
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as ArticleSource?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      urlToImage: freezed == urlToImage
          ? _value.urlToImage
          : urlToImage // ignore: cast_nullable_to_non_nullable
              as String?,
      publishedAt: freezed == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ArticleItem implements _ArticleItem {
  const _$_ArticleItem(
      {required this.source,
      required this.author,
      required this.title,
      required this.description,
      required this.url,
      required this.urlToImage,
      required this.publishedAt,
      required this.content});

  factory _$_ArticleItem.fromJson(Map<String, dynamic> json) =>
      _$$_ArticleItemFromJson(json);

  /// The identifier id and a display name name for the source this article came from.
  @override
  final ArticleSource? source;

  /// The author of the article
  @override
  final String? author;

  /// The headline or title of the article.
  @override
  final String? title;

  /// A description or snippet from the article.
  @override
  final String? description;

  /// The direct URL to the article.
  @override
  final String? url;

  /// The URL to a relevant image for the article.
  @override
  final String? urlToImage;

  /// The date and time that the article was published, in UTC (+000)
  @override
  final String? publishedAt;

  /// The unformatted content of the article, where available. This is truncated to 200 chars.
  @override
  final String? content;

  @override
  String toString() {
    return 'ArticleItem(source: $source, author: $author, title: $title, description: $description, url: $url, urlToImage: $urlToImage, publishedAt: $publishedAt, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArticleItem &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.urlToImage, urlToImage) ||
                other.urlToImage == urlToImage) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, source, author, title,
      description, url, urlToImage, publishedAt, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ArticleItemCopyWith<_$_ArticleItem> get copyWith =>
      __$$_ArticleItemCopyWithImpl<_$_ArticleItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArticleItemToJson(
      this,
    );
  }
}

abstract class _ArticleItem implements ArticleItem {
  const factory _ArticleItem(
      {required final ArticleSource? source,
      required final String? author,
      required final String? title,
      required final String? description,
      required final String? url,
      required final String? urlToImage,
      required final String? publishedAt,
      required final String? content}) = _$_ArticleItem;

  factory _ArticleItem.fromJson(Map<String, dynamic> json) =
      _$_ArticleItem.fromJson;

  @override

  /// The identifier id and a display name name for the source this article came from.
  ArticleSource? get source;
  @override

  /// The author of the article
  String? get author;
  @override

  /// The headline or title of the article.
  String? get title;
  @override

  /// A description or snippet from the article.
  String? get description;
  @override

  /// The direct URL to the article.
  String? get url;
  @override

  /// The URL to a relevant image for the article.
  String? get urlToImage;
  @override

  /// The date and time that the article was published, in UTC (+000)
  String? get publishedAt;
  @override

  /// The unformatted content of the article, where available. This is truncated to 200 chars.
  String? get content;
  @override
  @JsonKey(ignore: true)
  _$$_ArticleItemCopyWith<_$_ArticleItem> get copyWith =>
      throw _privateConstructorUsedError;
}
