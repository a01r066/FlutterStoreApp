// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'kbanner.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$KBannerTearOff {
  const _$KBannerTearOff();

  _KBanner call(
      {required String id, required String title, required String imageUrl}) {
    return _KBanner(
      id: id,
      title: title,
      imageUrl: imageUrl,
    );
  }
}

/// @nodoc
const $KBanner = _$KBannerTearOff();

/// @nodoc
mixin _$KBanner {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $KBannerCopyWith<KBanner> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KBannerCopyWith<$Res> {
  factory $KBannerCopyWith(KBanner value, $Res Function(KBanner) then) =
      _$KBannerCopyWithImpl<$Res>;
  $Res call({String id, String title, String imageUrl});
}

/// @nodoc
class _$KBannerCopyWithImpl<$Res> implements $KBannerCopyWith<$Res> {
  _$KBannerCopyWithImpl(this._value, this._then);

  final KBanner _value;
  // ignore: unused_field
  final $Res Function(KBanner) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$KBannerCopyWith<$Res> implements $KBannerCopyWith<$Res> {
  factory _$KBannerCopyWith(_KBanner value, $Res Function(_KBanner) then) =
      __$KBannerCopyWithImpl<$Res>;
  @override
  $Res call({String id, String title, String imageUrl});
}

/// @nodoc
class __$KBannerCopyWithImpl<$Res> extends _$KBannerCopyWithImpl<$Res>
    implements _$KBannerCopyWith<$Res> {
  __$KBannerCopyWithImpl(_KBanner _value, $Res Function(_KBanner) _then)
      : super(_value, (v) => _then(v as _KBanner));

  @override
  _KBanner get _value => super._value as _KBanner;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_KBanner(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_KBanner extends _KBanner {
  const _$_KBanner(
      {required this.id, required this.title, required this.imageUrl})
      : super._();

  @override
  final String id;
  @override
  final String title;
  @override
  final String imageUrl;

  @override
  String toString() {
    return 'KBanner(id: $id, title: $title, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _KBanner &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(imageUrl));

  @JsonKey(ignore: true)
  @override
  _$KBannerCopyWith<_KBanner> get copyWith =>
      __$KBannerCopyWithImpl<_KBanner>(this, _$identity);
}

abstract class _KBanner extends KBanner {
  const factory _KBanner(
      {required String id,
      required String title,
      required String imageUrl}) = _$_KBanner;
  const _KBanner._() : super._();

  @override
  String get id;
  @override
  String get title;
  @override
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$KBannerCopyWith<_KBanner> get copyWith =>
      throw _privateConstructorUsedError;
}
