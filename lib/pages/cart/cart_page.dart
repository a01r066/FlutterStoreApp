import 'package:flutter/material.dart';
import 'package:flutter_store_app/pages/shared/empty_page.dart';
import 'package:flutter_store_app/pages/cart/cart_widget.dart';
import '../../helpers/kapp_icons.dart';

class CartPage extends StatefulWidget {
  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  List items = [1, 2, 3, 4, 5, 6];
  final emptyPage = EmptyPage(
    title: "Your cart is empty!",
    description: "Look like you haven't add any items in your cart yet!",
    iconData: KAppIcons.cartEmpty,
    buttonName: "Show Now",
    callback: () {
      print("Button tapped!");
    },
  );

  @override
  Widget build(BuildContext context) {
    return items.isEmpty
        ? Scaffold(
            body: emptyPage,
          )
        : Scaffold(
            appBar: AppBar(
              title: Text("Cart(1)"),
              actions: [
                IconButton(
                  onPressed: () {
                    print("Delete");
                  },
                  icon: Icon(KAppIcons.delete),
                ),
                Icon(
                  null,
                ),
              ],
            ),
            body: Container(
              margin: EdgeInsets.only(bottom: 68.0),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
                    child: CartItemWidget(),
                  );
                },
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                itemCount: items.length,
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
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      children: [
                        Text("Total:"),
                        SizedBox(
                          width: 12.0,
                        ),
                        Text(
                          "\$199.99",
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
          );
  }
}
