import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_store_app/pages/cart/cart_item_widget.dart';
import 'package:flutter_store_app/pages/products/product_list_page.dart';
import 'package:flutter_store_app/pages/shared/empty_page.dart';
import 'package:get/get.dart';
import '../../controllers/main_controller.dart';
import '../../helpers/kapp_icons.dart';

class CartPage extends StatefulWidget {
  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final mainController = Get.find<MainController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => mainController.cartItems.isEmpty
          ? Scaffold(
              body: EmptyPage(
                title: "Your cart is empty!",
                description:
                    "Look like you haven't add any items in your cart yet!",
                iconData: KAppIcons.cartPlus,
                buttonName: "Show Now",
                callback: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProductListPage()));
                },
              ),
            )
          : Scaffold(
              appBar: AppBar(
                title: Text("Cart(${mainController.cartItems.length})"),
                actions: [
                  IconButton(
                    onPressed: () {
                      context.showFlashDialog(
                        constraints: const BoxConstraints(maxWidth: 300),
                        persistent: true,
                        title: const ListTile(
                          title: Text("Clear cart?"),
                          leading: Icon(KAppIcons.alert),
                        ),
                        content: Text('Your cart will be clear!'),
                        negativeActionBuilder: (context, controller, _) {
                          return TextButton(
                            onPressed: () {
                              controller.dismiss();
                            },
                            child: Text('NO'),
                          );
                        },
                        positiveActionBuilder: (context, controller, _) {
                          return TextButton(
                              onPressed: () {
                                mainController.clearAllCartItems();
                                controller.dismiss();
                              },
                              child: Text('YES'));
                        },
                      );
                    },
                    icon: const Icon(KAppIcons.delete),
                  ),
                ],
              ),
              body: Container(
                margin: const EdgeInsets.only(bottom: 68.0),
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    final cartItem = mainController.cartItems[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12.0, vertical: 6.0),
                      child: CartItemWidget(
                        cartItem: cartItem,
                        deleteCallback: () {
                          context.showFlashDialog(
                            constraints: const BoxConstraints(maxWidth: 300),
                            persistent: true,
                            title: const ListTile(
                              title: Text("Remove item?"),
                              leading: Icon(KAppIcons.alert),
                            ),
                            content:
                                Text('Product will be removed from the cart!'),
                            negativeActionBuilder: (context, controller, _) {
                              return TextButton(
                                onPressed: () {
                                  controller.dismiss();
                                },
                                child: Text('NO'),
                              );
                            },
                            positiveActionBuilder: (context, controller, _) {
                              return TextButton(
                                  onPressed: () {
                                    mainController.removeCartItem(
                                        cartItem: cartItem);
                                    controller.dismiss();
                                  },
                                  child: Text('YES'));
                            },
                          );
                        },
                        minusCallback: () {
                          mainController.removeCartItemQty(item: cartItem);
                        },
                        plusCallback: () {
                          mainController.addCartItemQty(item: cartItem);
                        },
                      ),
                    );
                  },
                  physics: const ClampingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: mainController.cartItems.length,
                ),
              ),
              bottomSheet: Padding(
                padding: EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Checkout"),
                        style: ElevatedButton.styleFrom(
                          primary: Theme.of(context).colorScheme.primary,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          // minimumSize: Size(128.0, 40.0)
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 24.0),
                      child: Row(
                        children: [
                          Text(
                            "TOTAL:",
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 12.0,
                          ),
                          Text(
                            "\$${mainController.totalAmount.toStringAsFixed(1)}",
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).accentColor),
                          ),
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
