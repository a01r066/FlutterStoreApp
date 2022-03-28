import 'package:flutter_store_app/models/category.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'product.freezed.dart';

@freezed
class Product with _$Product {
  const factory Product({
    required String id,
    required Category category,
    required String title,
    String? description,
    double? price,
    String? imageUrl,
    bool? isFavourite,
    bool? isPopular
  }) = _Product;
}
