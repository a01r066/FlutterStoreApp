import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_store_app/controllers/main_controller.dart';
import 'package:flutter_store_app/helpers/kapp_icons.dart';
import 'package:flutter_store_app/helpers/kconstants.dart';
import 'package:flutter_store_app/models/cart_item.dart';
import 'package:flutter_store_app/pages/products/product_detail_page.dart';
import 'package:flutter_store_app/pages/shared/shared_widget.dart';
import '../../controllers/api_controller.dart';
import '../../helpers/number_formatter.dart';
import '../../models/product.dart';
import 'package:get/get.dart';

class PopularProductsWidget extends StatefulWidget {
  @override
  _PopularProductsWidgetState createState() => _PopularProductsWidgetState();
}

class _PopularProductsWidgetState extends State<PopularProductsWidget> {
  final apiController = Get.find<ApiController>();
  final mainController = Get.find<MainController>();
  List<Product> products = [];

  @override
  Widget build(BuildContext context) {
    products = apiController.getPopularProducts();
    return Container(
      height: 256.0,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 12.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ProductDetailPage(product: products[index])));
              },
              child: ProductItemWidget(
                product: products[index],
                callback: () {
                  // print("Add to cart");
                  final product = products[index];
                  final cartItem = CartItem(
                      itemId: product.id,
                      title: product.title,
                      price: product.price,
                      imageUrl: product.imageUrl,
                      quantity: 1);
                  mainController.addToCart(
                    item: cartItem,
                    callback: (isSuccess) {
                      if(isSuccess){
                        EasyLoading.showSuccess(
                            "${product.title} added to cart!");
                      } else {
                        EasyLoading.showInfo('${product.title} existed in your cart!');
                      }
                    },
                  );
                },
              ),
            ),
          );
        },
        itemCount: products.length,
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
      ),
    );
  }
}

class ProductItemWidget extends StatelessWidget {
  final Product product;
  final Function() callback;

  const ProductItemWidget(
      {Key? key, required this.product, required this.callback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2,
      decoration: BoxDecoration(
        color: Theme.of(context).backgroundColor,
        borderRadius: BorderRadius.circular(6.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            children: [
              ClipRect(
                child: Container(
                  constraints: BoxConstraints(
                    minHeight: 96.0,
                    maxHeight: 148.0,
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(product.imageUrl),
                      fit: BoxFit.contain,
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(6.0),
                      topRight: Radius.circular(6.0),
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 8.0,
                bottom: 16.0,
                child: Badge(
                  toAnimate: false,
                  shape: BadgeShape.square,
                  badgeColor: Colors.redAccent,
                  borderRadius: BorderRadius.circular(8),
                  badgeContent: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      '\$ ${formatter.format(product.price)}',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 8.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                        child: Text(
                      product.categoryId,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    )),
                    // IconButton(
                    //   onPressed: callback,
                    //   icon: Icon(KAppIcons.cartPlus),
                    // ),
                    MatIconButton(
                        iconData: KAppIcons.cartPlus, callback: callback),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
