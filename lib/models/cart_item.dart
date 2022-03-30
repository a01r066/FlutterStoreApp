import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_item.freezed.dart';

@freezed
class CartItem with _$CartItem {
  const factory CartItem(
      {required String itemId,
      required String title,
      required double price,
      required String imageUrl,
      required int quantity}) = _CartItem;
}
