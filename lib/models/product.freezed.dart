// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProductTearOff {
  const _$ProductTearOff();

  _Product call(
      {required String id,
      required Category category,
      required String title,
      String? description,
      double? price,
      String? imageUrl,
      bool? isFavourite,
      bool? isPopular}) {
    return _Product(
      id: id,
      category: category,
      title: title,
      description: description,
      price: price,
      imageUrl: imageUrl,
      isFavourite: isFavourite,
      isPopular: isPopular,
    );
  }
}

/// @nodoc
const $Product = _$ProductTearOff();

/// @nodoc
mixin _$Product {
  String get id => throw _privateConstructorUsedError;
  Category get category => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  bool? get isFavourite => throw _privateConstructorUsedError;
  bool? get isPopular => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res>;
  $Res call(
      {String id,
      Category category,
      String title,
      String? description,
      double? price,
      String? imageUrl,
      bool? isFavourite,
      bool? isPopular});

  $CategoryCopyWith<$Res> get category;
}

/// @nodoc
class _$ProductCopyWithImpl<$Res> implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  final Product _value;
  // ignore: unused_field
  final $Res Function(Product) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? category = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? imageUrl = freezed,
    Object? isFavourite = freezed,
    Object? isPopular = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isFavourite: isFavourite == freezed
          ? _value.isFavourite
          : isFavourite // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPopular: isPopular == freezed
          ? _value.isPopular
          : isPopular // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  @override
  $CategoryCopyWith<$Res> get category {
    return $CategoryCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value));
    });
  }
}

/// @nodoc
abstract class _$ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$ProductCopyWith(_Product value, $Res Function(_Product) then) =
      __$ProductCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      Category category,
      String title,
      String? description,
      double? price,
      String? imageUrl,
      bool? isFavourite,
      bool? isPopular});

  @override
  $CategoryCopyWith<$Res> get category;
}

/// @nodoc
class __$ProductCopyWithImpl<$Res> extends _$ProductCopyWithImpl<$Res>
    implements _$ProductCopyWith<$Res> {
  __$ProductCopyWithImpl(_Product _value, $Res Function(_Product) _then)
      : super(_value, (v) => _then(v as _Product));

  @override
  _Product get _value => super._value as _Product;

  @override
  $Res call({
    Object? id = freezed,
    Object? category = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? imageUrl = freezed,
    Object? isFavourite = freezed,
    Object? isPopular = freezed,
  }) {
    return _then(_Product(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isFavourite: isFavourite == freezed
          ? _value.isFavourite
          : isFavourite // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPopular: isPopular == freezed
          ? _value.isPopular
          : isPopular // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_Product implements _Product {
  const _$_Product(
      {required this.id,
      required this.category,
      required this.title,
      this.description,
      this.price,
      this.imageUrl,
      this.isFavourite,
      this.isPopular});

  @override
  final String id;
  @override
  final Category category;
  @override
  final String title;
  @override
  final String? description;
  @override
  final double? price;
  @override
  final String? imageUrl;
  @override
  final bool? isFavourite;
  @override
  final bool? isPopular;

  @override
  String toString() {
    return 'Product(id: $id, category: $category, title: $title, description: $description, price: $price, imageUrl: $imageUrl, isFavourite: $isFavourite, isPopular: $isPopular)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Product &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality()
                .equals(other.isFavourite, isFavourite) &&
            const DeepCollectionEquality().equals(other.isPopular, isPopular));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(isFavourite),
      const DeepCollectionEquality().hash(isPopular));

  @JsonKey(ignore: true)
  @override
  _$ProductCopyWith<_Product> get copyWith =>
      __$ProductCopyWithImpl<_Product>(this, _$identity);
}

abstract class _Product implements Product {
  const factory _Product(
      {required String id,
      required Category category,
      required String title,
      String? description,
      double? price,
      String? imageUrl,
      bool? isFavourite,
      bool? isPopular}) = _$_Product;

  @override
  String get id;
  @override
  Category get category;
  @override
  String get title;
  @override
  String? get description;
  @override
  double? get price;
  @override
  String? get imageUrl;
  @override
  bool? get isFavourite;
  @override
  bool? get isPopular;
  @override
  @JsonKey(ignore: true)
  _$ProductCopyWith<_Product> get copyWith =>
      throw _privateConstructorUsedError;
}
