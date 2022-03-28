// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_info_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserInfoItemTearOff {
  const _$UserInfoItemTearOff();

  _UserInfoItem call(
      {required String title, String? subTitle, required IconData iconData}) {
    return _UserInfoItem(
      title: title,
      subTitle: subTitle,
      iconData: iconData,
    );
  }
}

/// @nodoc
const $UserInfoItem = _$UserInfoItemTearOff();

/// @nodoc
mixin _$UserInfoItem {
  String get title => throw _privateConstructorUsedError;
  String? get subTitle => throw _privateConstructorUsedError;
  IconData get iconData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserInfoItemCopyWith<UserInfoItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInfoItemCopyWith<$Res> {
  factory $UserInfoItemCopyWith(
          UserInfoItem value, $Res Function(UserInfoItem) then) =
      _$UserInfoItemCopyWithImpl<$Res>;
  $Res call({String title, String? subTitle, IconData iconData});
}

/// @nodoc
class _$UserInfoItemCopyWithImpl<$Res> implements $UserInfoItemCopyWith<$Res> {
  _$UserInfoItemCopyWithImpl(this._value, this._then);

  final UserInfoItem _value;
  // ignore: unused_field
  final $Res Function(UserInfoItem) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? subTitle = freezed,
    Object? iconData = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subTitle: subTitle == freezed
          ? _value.subTitle
          : subTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      iconData: iconData == freezed
          ? _value.iconData
          : iconData // ignore: cast_nullable_to_non_nullable
              as IconData,
    ));
  }
}

/// @nodoc
abstract class _$UserInfoItemCopyWith<$Res>
    implements $UserInfoItemCopyWith<$Res> {
  factory _$UserInfoItemCopyWith(
          _UserInfoItem value, $Res Function(_UserInfoItem) then) =
      __$UserInfoItemCopyWithImpl<$Res>;
  @override
  $Res call({String title, String? subTitle, IconData iconData});
}

/// @nodoc
class __$UserInfoItemCopyWithImpl<$Res> extends _$UserInfoItemCopyWithImpl<$Res>
    implements _$UserInfoItemCopyWith<$Res> {
  __$UserInfoItemCopyWithImpl(
      _UserInfoItem _value, $Res Function(_UserInfoItem) _then)
      : super(_value, (v) => _then(v as _UserInfoItem));

  @override
  _UserInfoItem get _value => super._value as _UserInfoItem;

  @override
  $Res call({
    Object? title = freezed,
    Object? subTitle = freezed,
    Object? iconData = freezed,
  }) {
    return _then(_UserInfoItem(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subTitle: subTitle == freezed
          ? _value.subTitle
          : subTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      iconData: iconData == freezed
          ? _value.iconData
          : iconData // ignore: cast_nullable_to_non_nullable
              as IconData,
    ));
  }
}

/// @nodoc

class _$_UserInfoItem extends _UserInfoItem {
  _$_UserInfoItem({required this.title, this.subTitle, required this.iconData})
      : super._();

  @override
  final String title;
  @override
  final String? subTitle;
  @override
  final IconData iconData;

  @override
  String toString() {
    return 'UserInfoItem(title: $title, subTitle: $subTitle, iconData: $iconData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserInfoItem &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.subTitle, subTitle) &&
            const DeepCollectionEquality().equals(other.iconData, iconData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(subTitle),
      const DeepCollectionEquality().hash(iconData));

  @JsonKey(ignore: true)
  @override
  _$UserInfoItemCopyWith<_UserInfoItem> get copyWith =>
      __$UserInfoItemCopyWithImpl<_UserInfoItem>(this, _$identity);
}

abstract class _UserInfoItem extends UserInfoItem {
  factory _UserInfoItem(
      {required String title,
      String? subTitle,
      required IconData iconData}) = _$_UserInfoItem;
  _UserInfoItem._() : super._();

  @override
  String get title;
  @override
  String? get subTitle;
  @override
  IconData get iconData;
  @override
  @JsonKey(ignore: true)
  _$UserInfoItemCopyWith<_UserInfoItem> get copyWith =>
      throw _privateConstructorUsedError;
}
