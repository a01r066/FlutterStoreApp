import 'package:flutter/material.dart';
import 'package:flutter_store_app/controllers/api_controller.dart';
import 'package:flutter_store_app/models/category.dart';
import 'package:flutter_store_app/models/product.dart';
import 'package:flutter_store_app/pages/products/feeds_widget.dart';
import 'package:flutter_store_app/pages/products/product_detail_page.dart';
import 'package:get/get.dart';

class ProductListPage extends StatefulWidget {
  final Category? category;

  ProductListPage({Key? key, this.category}) : super(key: key);

  @override
  State<ProductListPage> createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  final apiController = Get.find<ApiController>();
  List<Product> products = [];

  @override
  void initState() {
    super.initState();
    if (widget.category != null) {
      products = apiController.getProductsByCategoryId(widget.category!.id);
    } else {
      products = apiController.getProducts();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.category?.title}"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: Column(
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 12.0),
                child: GridView.count(
                  childAspectRatio: 25 / 37,
                  crossAxisCount: 2,
                  mainAxisSpacing: 12.0,
                  crossAxisSpacing: 12.0,
                  children: List.generate(
                    products.length,
                    (index) {
                      return GestureDetector(
                          onTap: () {
                            print("productId: ${products[index].id}");
                            // Get.toNamed("/product_detail");
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    ProductDetailPage(product: products[index]),
                              ),
                            );
                          },
                          child: ProductItemWidget(
                            product: products[index],
                          ));
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}