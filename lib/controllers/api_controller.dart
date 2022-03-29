import 'package:flutter_store_app/models/brand.dart';
import 'package:flutter_store_app/models/category.dart';
import 'package:flutter_store_app/models/product.dart';
import 'package:get/get.dart';
import 'fake_data.dart';

class ApiController extends GetxController {
  List<Category> getCategories() {
    return [...FakeData.shared.categories];
  }

  List<Product> getProducts() {
    return [...FakeData.shared.products];
  }

  List<Product> getPopularProducts() {
    return [...FakeData.shared.products]
        .where((element) => element.isPopular == true)
        .toList();
  }

  Product getProductById(String productId) {
    return [...FakeData.shared.products]
        .firstWhere((element) => element.id == productId);
  }

  List<Product> getProductsByCategoryId(String categoryId) {
    List<Product> products = [...FakeData.shared.products]
        .where((element) => element.categoryId
        .toLowerCase()
        .contains(categoryId.toLowerCase()))
        .toList();
    return products;
  }

  List<Product> getProductByBrandId(String brandId) {
    List<Product> products = [...FakeData.shared.products]
        .where((element) => element.brandId!
        .toLowerCase()
        .contains(brandId.toLowerCase()))
        .toList();
    return products;
  }

  List<Product> searchQuery(String searchText) {
    List<Product> products = [...FakeData.shared.products]
        .where((element) => element.title
        .toLowerCase()
        .contains(searchText.toLowerCase()))
        .toList();
    return products;
  }

  List<Brand> getBrands(){
    return [...FakeData.shared.brands];
  }
}
