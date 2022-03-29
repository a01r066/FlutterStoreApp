import 'package:freezed_annotation/freezed_annotation.dart';
part 'product.freezed.dart';

@freezed
class Product with _$Product {
  const factory Product({
    required String id,
    required String title,
    required String categoryId,
    String? description,
    double? price,
    int? quantity,
    String? brandId,
    String? imageUrl,
    bool? isFavourite,
    bool? isPopular
  }) = _Product;
}