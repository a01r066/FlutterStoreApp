import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_store_app/controllers/main_controller.dart';
import 'package:flutter_store_app/helpers/kcolors.dart';
import 'package:flutter_store_app/pages/shared/empty_page.dart';
import 'package:get/get.dart';
import '../../helpers/kapp_icons.dart';
import '../../models/product.dart';
import '../products/product_list_page.dart';

class WishlistPage extends StatefulWidget {
  @override
  _WishlistPageState createState() => _WishlistPageState();
}

class _WishlistPageState extends State<WishlistPage> {
  final mainController = Get.find<MainController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => mainController.wishlistItems.isEmpty
          ? EmptyPage(
              title: "Your wishlist is empty!",
              description: "Explore and shop list some items",
              iconData: KAppIcons.cartHeart,
              buttonName: "Shopping Now",
              callback: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ProductListPage()));
              },
            )
          : Scaffold(
              appBar: AppBar(
                title: Text("Wishlist(${mainController.wishlistItems.length})"),
              ),
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    ListView.builder(
                      itemBuilder: (context, index) {
                        return WishlistItem(
                          product: mainController.wishlistItems[index],
                          callback: (product){
                            mainController.removeWishlistItem(product: product);
                          },
                        );
                      },
                      itemCount: mainController.wishlistItems.length,
                      shrinkWrap: true,
                      physics: const ClampingScrollPhysics(),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}

class WishlistItem extends StatelessWidget {
  final Product product;
  final Function(Product) callback;

  const WishlistItem({
    Key? key,
    required this.product,
    required this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 112.0,
      width: double.infinity,
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 12.0, right: 24.0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CachedNetworkImage(
                        imageUrl: product.imageUrl,
                        height: 96.0,
                        fit: BoxFit.contain,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                product.title,
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height: 8.0,
                              ),
                              Text(
                                product.description ?? "",
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w300,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.background,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 24.0,
            right: 16.0,
            child: Container(
              width: 30.0,
              height: 30.0,
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                splashColor: KColors.favColor,
                color: Colors.redAccent,
                padding: EdgeInsets.all(0),
                onPressed: (){
                  callback(product);
                },
                child: Icon(
                  KAppIcons.close,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
