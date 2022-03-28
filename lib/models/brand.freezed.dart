// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'brand.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BrandTearOff {
  const _$BrandTearOff();

  _Brand call({required String id, required String title, String? imageUrl}) {
    return _Brand(
      id: id,
      title: title,
      imageUrl: imageUrl,
    );
  }
}

/// @nodoc
const $Brand = _$BrandTearOff();

/// @nodoc
mixin _$Brand {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BrandCopyWith<Brand> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandCopyWith<$Res> {
  factory $BrandCopyWith(Brand value, $Res Function(Brand) then) =
      _$BrandCopyWithImpl<$Res>;
  $Res call({String id, String title, String? imageUrl});
}

/// @nodoc
class _$BrandCopyWithImpl<$Res> implements $BrandCopyWith<$Res> {
  _$BrandCopyWithImpl(this._value, this._then);

  final Brand _value;
  // ignore: unused_field
  final $Res Function(Brand) _then;

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
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$BrandCopyWith<$Res> implements $BrandCopyWith<$Res> {
  factory _$BrandCopyWith(_Brand value, $Res Function(_Brand) then) =
      __$BrandCopyWithImpl<$Res>;
  @override
  $Res call({String id, String title, String? imageUrl});
}

/// @nodoc
class __$BrandCopyWithImpl<$Res> extends _$BrandCopyWithImpl<$Res>
    implements _$BrandCopyWith<$Res> {
  __$BrandCopyWithImpl(_Brand _value, $Res Function(_Brand) _then)
      : super(_value, (v) => _then(v as _Brand));

  @override
  _Brand get _value => super._value as _Brand;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_Brand(
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
              as String?,
    ));
  }
}

/// @nodoc

class _$_Brand implements _Brand {
  const _$_Brand({required this.id, required this.title, this.imageUrl});

  @override
  final String id;
  @override
  final String title;
  @override
  final String? imageUrl;

  @override
  String toString() {
    return 'Brand(id: $id, title: $title, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Brand &&
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
  _$BrandCopyWith<_Brand> get copyWith =>
      __$BrandCopyWithImpl<_Brand>(this, _$identity);
}

abstract class _Brand implements Brand {
  const factory _Brand(
      {required String id, required String title, String? imageUrl}) = _$_Brand;

  @override
  String get id;
  @override
  String get title;
  @override
  String? get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$BrandCopyWith<_Brand> get copyWith => throw _privateConstructorUsedError;
}
