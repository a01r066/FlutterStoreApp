import 'package:flutter/material.dart';
import 'package:flutter_store_app/pages/cart/cart_item_widget.dart';
import 'package:flutter_store_app/pages/shared/empty_page.dart';
import 'package:get/get.dart';
import '../../controllers/main_controller.dart';
import '../../helpers/kapp_icons.dart';
import '../../models/cart_item.dart';

class CartPage extends StatefulWidget {
  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final mainController = Get.find<MainController>();
  List<CartItem> cartItems = [];

  final emptyPage = EmptyPage(
    title: "Your cart is empty!",
    description: "Look like you haven't add any items in your cart yet!",
    iconData: KAppIcons.cartPlus,
    buttonName: "Show Now",
    callback: () {
      print("Button tapped!");
    },
  );

  @override
  void initState() {
    super.initState();
    cartItems = mainController.cartItems;
    mainController.getTotalAmount();
  }

  @override
  Widget build(BuildContext context) {
    return cartItems.isEmpty
        ? Scaffold(
            body: emptyPage,
          )
        : Scaffold(
            appBar: AppBar(
              title: Text("Cart(${mainController.cartItems.length})"),
              actions: [
                // IconButton(
                //   onPressed: () {
                //     print("Delete");
                //   },
                //   icon: Icon(KAppIcons.delete),
                // ),
              ],
            ),
            body: Container(
              margin: EdgeInsets.only(bottom: 68.0),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  final cartItem = cartItems[index];
                  return Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
                    child: CartItemWidget(
                      cartItem: cartItem,
                      deleteCallback: () {
                        setState(() {
                          mainController.removeCartItem(cartItem: cartItem);
                          mainController.getTotalAmount();
                        });
                      },
                      minusCallback: () {
                        setState(() {
                          mainController.removeCartItemQty(item: cartItem);
                          mainController.getTotalAmount();
                        });
                      },
                      plusCallback: () {
                        setState(() {
                          mainController.addCartItemQty(item: cartItem);
                          mainController.getTotalAmount();
                        });
                      },
                    ),
                  );
                },
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                itemCount: cartItems.length,
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
                        Text("TOTAL:", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),),
                        SizedBox(
                          width: 12.0,
                        ),
                        Obx(() =>
                          Text(
                            "\$${mainController.totalAmount.toStringAsFixed(1)}",
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).accentColor),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
  }
}
