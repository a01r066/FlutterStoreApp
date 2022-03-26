import 'package:flutter/material.dart';
import 'package:flutter_store_app/pages/widgets/cart_widget.dart';

import '../helpers/kapp_icons.dart';

class CartPage extends StatefulWidget {
  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  List products = ["abc"];

  @override
  Widget build(BuildContext context) {
    return products.isEmpty ? Scaffold(body: CartEmptyWidget(context),) :
    Scaffold(
      appBar: AppBar(
        title: Text("Cart(1)"),
        actions: [
          IconButton(onPressed: (){
            print("Delete");
          }, icon: Icon(KAppIcons.delete),),
          Icon(null,),
        ],
      ),
      body: Container(
        margin: EdgeInsets.only(bottom: 68.0),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
              child: CartItemWidget(context),
            );
          },
          physics: ClampingScrollPhysics(),
          shrinkWrap: true,
          itemCount: 10,
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
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0),),
                  // minimumSize: Size(128.0, 40.0)
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Text("Total:"),
                  SizedBox(width: 12.0,),
                  Text("\$199.99", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Theme.of(context).accentColor),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
