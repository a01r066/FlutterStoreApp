import 'package:flash/flash.dart';
import 'package:flutter/animation.dart';
import 'package:flutter_store_app/models/cart_item.dart';
import 'package:flutter_store_app/models/product.dart';
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

  // Wishlist
  final List<Product> _wishlistItems = <Product>[].obs;
  List<Product> get wishlistItems => _wishlistItems;

  addToWishlist({required Product product, required Function(bool) callback}){
    final itemIndex = [..._wishlistItems].indexOf(product);
    if(itemIndex == -1){
      _wishlistItems.add(product);
      callback(true);
    } else {
      callback(false);
    }
  }

  removeWishlistItem({required Product product}){
    _wishlistItems.removeWhere((prod) => prod.id == product.id);
  }

  // Cart
  final List<CartItem> _cartItems = <CartItem>[].obs;
  List<CartItem> get cartItems => _cartItems;

  int get cartItemCount => _cartItems.length;
  final _productItemsCount = 0.obs;
  int get productItemCount => _productItemsCount.value;

  addToCart({required CartItem item, required Function(bool) callback}){
    final itemIndex = [..._cartItems].indexOf(item);
    if(itemIndex == -1){
      _cartItems.add(item);
      getTotalAmount();
      callback(true);
    } else {
      callback(false);
    }
  }

  clearAllCartItems(){
    _cartItems.clear();
    getTotalAmount();
  }

  removeCartItem({required CartItem cartItem}){
    _cartItems.removeWhere((item) => item.itemId == cartItem.itemId);
    getTotalAmount();
  }

  addCartItemQty({required CartItem item}){
    final itemIndex = [..._cartItems].indexOf(item);

    final newQty = item.quantity + 1;
    _productItemsCount.value = newQty;

    final newItem = CartItem(itemId: item.itemId, title: item.title, price: item.price, imageUrl: item.imageUrl, quantity: newQty);
    _cartItems[itemIndex] = newItem;
    getTotalAmount();
  }

  removeCartItemQty({required CartItem item}){
    final itemIndex = [..._cartItems].indexOf(item);

    if(item.quantity > 1){
      final newQty = item.quantity - 1;
      _productItemsCount.value = newQty;

      final newItem = CartItem(itemId: item.itemId, title: item.title, price: item.price, imageUrl: item.imageUrl, quantity: newQty);
      _cartItems[itemIndex] = newItem;
      getTotalAmount();
    }
  }

  final _totalAmount = 0.0.obs;
  double get totalAmount => _totalAmount.value;
  String getTotalAmount() {
    _totalAmount.value = 0;
    for (CartItem cartItem in [..._cartItems]) {
      _totalAmount.value += (cartItem.price * cartItem.quantity);
    }
    return formatter.format(_totalAmount.value);
  }
}
