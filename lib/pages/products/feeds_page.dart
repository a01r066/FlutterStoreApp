import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_store_app/controllers/api_controller.dart';
import 'package:flutter_store_app/helpers/kapp_icons.dart';
import 'package:flutter_store_app/models/product.dart';
import 'package:flutter_store_app/pages/products/feeds_widget.dart';
import 'package:get/get.dart';

class FeedsPage extends StatefulWidget {
  @override
  State<FeedsPage> createState() => _FeedsPageState();
}

class _FeedsPageState extends State<FeedsPage> {
  final apiController = Get.find<ApiController>();
  List<Product> products = [];

  @override
  Widget build(BuildContext context) {
    products = apiController.getProducts();
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 64.0,
              decoration: BoxDecoration(
                color: Theme.of(context).backgroundColor,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Feeds",
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Badge(
                          badgeContent: Text(
                            '3',
                            style: TextStyle(color: Colors.white),
                          ),
                          child: Icon(
                            KAppIcons.wishlist,
                          ),
                          badgeColor: Colors.redAccent,
                        ),
                        SizedBox(
                          width: 24.0,
                        ),
                        Badge(
                          badgeContent: Text(
                            "4",
                            style: TextStyle(color: Colors.white),
                          ),
                          child: Icon(
                            KAppIcons.cart,
                          ),
                          badgeColor: Colors.blueAccent,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(12.0),
                child: GridView.count(
                  childAspectRatio: 25 / 37,
                  crossAxisCount: 2,
                  mainAxisSpacing: 12.0,
                  crossAxisSpacing: 12.0,
                  children: List.generate(
                    products.length,
                    (index) {
                      return GestureDetector(
                        onTap: (){
                          Get.toNamed("/product_detail");
                        },
                          child: ProductItemWidget(product: products[index],));
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
