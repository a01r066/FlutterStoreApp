import 'package:flutter/material.dart';
import 'package:flutter_store_app/helpers/kapp_icons.dart';
import 'package:flutter_store_app/helpers/kconstants.dart';
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
  List<int> items = [1, 2, 3, 4, 5, 6, 7];

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
                        children: [
                          MatIconButton(
                            iconData: KAppIcons.arrowLeft,
                            callback: () {
                              Get.back();
                            },
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(left: 32.0),
                            child: Text(
                              widget.product.title,
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Spacer(),
                          Row(
                            children: [
                              MatIconButton(
                                iconData: KAppIcons.heartEmpty,
                                callback: () {
                                  print("heart");
                                },
                              ),
                              MatIconButton(
                                iconData: KAppIcons.cartFill,
                                callback: () {
                                  print("Cartfill");
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                      ClipRect(
                        child: Container(
                          constraints: BoxConstraints(
                            minHeight: 100.0,
                            maxHeight: 152.0,
                          ),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(widget.product.imageUrl ?? KConstant.noPhotoNetwork),
                              fit: BoxFit.contain
                            )
                          ),
                        ),
                      ),
                      Row(
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
                        child: HeaderWidget(title: "Title"),
                      ),
                      Text("US \$ 15"),
                      Divider(),
                      Text("Description..."),
                      Divider(),
                      ListView.builder(
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 12.0),
                            child: ProductFeatureWidget(
                                context: context,
                                title: "Title",
                                description: "Description"),
                          );
                        },
                        itemCount: 5,
                        shrinkWrap: true,
                        physics: ClampingScrollPhysics(),
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
                  child: HeaderWidget(title: "Popular products"),
                ),
                Container(
                  height: 256.0,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: ProductCardWidget(
                          item: items[index],
                          iconData: KAppIcons.viewMore,
                          callback: () {
                            print("Detail");
                          },
                        ),
                      );
                    },
                    itemCount: items.length,
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
                    print("Tapped");
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

Widget ProductFeatureWidget(
    {required BuildContext context,
    required String title,
    required String description}) {
  return Row(
    children: [
      Text(
        title,
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w500,
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Text(
          description,
          style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w500,),
        ),
      ),
    ],
  );
}
