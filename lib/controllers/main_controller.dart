import 'package:flutter/animation.dart';
import 'package:flutter_store_app/models/cart_item.dart';
import 'package:get/get.dart';
import '../helpers/number_formatter.dart';

class MainController extends GetxController {
  // Bottom navigation bar
  final _currentPageIndex = 0.obs;
  int get currentPageIndex => _currentPageIndex.value;
  setCurrentPageIndex(int page) {
    _currentPageIndex.value = page;
  }

  // Banner carousel
  final _currentBannerIndex = 0.obs;
  int get currentBannerIndex => _currentBannerIndex.value;
  setCurrentBannerIndex(int page) {
    _currentBannerIndex.value = page;
  }

  // Sidebar
  final _isSidebarHidden = true.obs;
  bool get isSidebarHidden => _isSidebarHidden.value;
  setSidebarHidden(bool value){
    _isSidebarHidden.value = value;
  }
  late AnimationController sidebarAnimationController;

  // Brands
  final brandSelectedIndex = 0.obs;

  // Cart
  final List<CartItem> _cartItems = <CartItem>[].obs;
  List<CartItem> get cartItems => _cartItems;

  addToCart({required CartItem item, required Function(bool) callback}){
    final currentCartItems = [..._cartItems];
    final itemIndex = currentCartItems.indexOf(item);
    if(itemIndex == -1){
      _cartItems.add(item);
      callback(true);
    } else {
      callback(false);
    }
  }

  removeCartItem({required CartItem cartItem}){
    _cartItems.removeWhere((item) => item.itemId == cartItem.itemId);
  }

  addCartItemQty({required CartItem item}){
    final currentCartItems = [..._cartItems];
    final itemIndex = currentCartItems.indexOf(item);

    final newQty = item.quantity + 1;
    final newPrice = item.price * newQty;

    final newItem = CartItem(itemId: item.itemId, title: item.title, price: newPrice, imageUrl: item.imageUrl, quantity: newQty);
    _cartItems[itemIndex] = newItem;
  }

  removeCartItemQty({required CartItem item}){
    final currentCartItems = [..._cartItems];
    final itemIndex = currentCartItems.indexOf(item);

    if(item.quantity > 1){
      final newQty = item.quantity - 1;
      final newPrice = item.price * newQty;

      final newItem = CartItem(itemId: item.itemId, title: item.title, price: newPrice, imageUrl: item.imageUrl, quantity: newQty);
      _cartItems[itemIndex] = newItem;
    }
  }

  final _totalAmount = 0.0.obs;
  double get totalAmount => _totalAmount.value;
  String getTotalAmount() {
    _totalAmount.value = 0;
    for (CartItem cartItem in [..._cartItems]) {
      _totalAmount.value += cartItem.price;
    }
    return formatter.format(_totalAmount.value);
  }
}
