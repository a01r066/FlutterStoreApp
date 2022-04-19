import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_store_app/controllers/api_controller.dart';
import 'package:flutter_store_app/controllers/main_controller.dart';
import 'package:flutter_store_app/helpers/kapp_icons.dart';
import 'package:flutter_store_app/helpers/kconstants.dart';
import 'package:flutter_store_app/helpers/number_formatter.dart';
import 'package:flutter_store_app/models/cart_item.dart';
import 'package:flutter_store_app/models/product.dart';
import 'package:flutter_store_app/pages/products/product_card_widget.dart';
import 'package:get/get.dart';
import '../shared/shared_widget.dart';

class ProductDetailPage extends StatefulWidget {
  final Product product;

  ProductDetailPage({Key? key,  required this.product }) : super(key: key);

  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  final apiController = Get.find<ApiController>();
  final mainController = Get.find<MainController>();
  List<Product> products = [];

  @override
  void initState() {
    super.initState();
    products = apiController.getProductsByCategoryId(widget.product.categoryId);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(bottom: 56.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 248.0,
                  width: double.infinity,
                  decoration:
                      BoxDecoration(color: Theme.of(context).backgroundColor),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MatIconButton(
                            iconData: KAppIcons.arrowLeft,
                            callback: () {
                              Get.back();
                            },
                          ),
                          Flexible(
                            child: Text(
                              widget.product.title,
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Row(
                              children: [
                                MatIconButton(
                                  iconData: KAppIcons.heartEmpty,
                                  callback: () {
                                    print("heart");
                                  },
                                ),
                                SizedBox(width: 12.0,),
                                MatIconButton(
                                  iconData: KAppIcons.cartFill,
                                  callback: () {
                                    print("Cartfill");
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      ClipRect(
                        child: Container(
                          constraints: BoxConstraints(
                            minHeight: 96.0,
                            maxHeight: 155.0,
                          ),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(widget.product.imageUrl),
                              fit: BoxFit.contain
                            )
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          children: [
                            Spacer(),
                            Row(
                              children: [
                                MatIconButton(
                                  iconData: KAppIcons.save,
                                  callback: () {
                                    print("Save");
                                  },
                                ),
                                SizedBox(width: 12.0,),
                                MatIconButton(
                                  iconData: KAppIcons.share,
                                  callback: () {
                                    print("Share");
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12.0),
                        child: HeaderWidget(title: widget.product.title, isHidden: true,),
                      ),
                      Text("US \$ ${formatter.format(widget.product.price)}"),
                      Divider(),
                      Text(widget.product.description ?? "",),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ProductFeatureWidget(title: "Brand", description: widget.product.brandId ?? ""),
                            ProductFeatureWidget(title: "Quantity", description: "${widget.product.quantity}"),
                            ProductFeatureWidget(title: "Category", description: widget.product.categoryId),
                            ProductFeatureWidget(title: "Popularity", description: "${widget.product.isPopular}"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 96.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Theme.of(context).backgroundColor,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "No review yet!",
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        "Be the first review.",
                        style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: HeaderWidget(title: "Other products"),
                ),
                Container(
                  height: 256.0,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ProductDetailPage(product: products[index])));
                          },
                          child: ProductCardWidget(
                            product: products[index],
                            iconData: KAppIcons.viewMore,
                            callback: () {
                             print("more");
                            },
                          ),
                        ),
                      );
                    },
                    itemCount: products.length,
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomSheet: Container(
          // height: 48.0,
          width: double.infinity,
          decoration: BoxDecoration(color: Colors.transparent),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: MaterialButton(
                  splashColor: Colors.transparent,
                  color: Colors.redAccent,
                  onPressed: () {
                    final cartItem = CartItem(itemId: widget.product.id, title: widget.product.title, price: widget.product.price, imageUrl: widget.product.imageUrl, quantity: 1);
                    mainController.addToCart(item: cartItem, callback: (isSuccess){
                      if(isSuccess){
                        EasyLoading.showSuccess("${widget.product.title} added to cart!");
                      } else {
                        EasyLoading.showInfo("${widget.product.title} existed in your cart!");
                      }
                    });
                  },
                  child: Text(
                    "ADD TO CART",
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: MaterialButton(
                        splashColor: Colors.transparent,
                        color: Theme.of(context).colorScheme.background,
                        onPressed: () {
                          print("Tapped");
                        },
                        child: Text(
                          "BUY NOW",
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    MatIconButton(
                        iconData: KAppIcons.heartEmpty,
                        callback: () {
                          print("Tapped!");
                        })
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProductFeatureWidget extends StatelessWidget {
  final String title;
  final String description;
  const ProductFeatureWidget({Key? key, required this.title, required this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Text(
            description,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w500,),
          ),
        ),
      ],
    );
  }
}