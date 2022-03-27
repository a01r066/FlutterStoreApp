import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_store_app/helpers/kapp_icons.dart';

class ProductsWidget extends StatefulWidget {
  @override
  _ProductsWidgetState createState() => _ProductsWidgetState();
}

class _ProductsWidgetState extends State<ProductsWidget> {
  List<int> items = [1, 2, 3, 4, 5];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 256.0,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ProductsItemWidget(context, items[index]),
          );
        },
        itemCount: items.length,
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
      ),
    );
  }
}

Widget ProductsItemWidget(BuildContext context, int item) {
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
            Container(
              constraints: BoxConstraints(
                minHeight: 96.0,
                maxHeight: 148.0,
              ),
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/images/CatFurniture.jpg'),
                fit: BoxFit.fill,
              )),
            ),
            Positioned(
              right: 8.0,
              bottom: 16.0,
              child: Badge(
                toAnimate: false,
                shape: BadgeShape.square,
                badgeColor: Colors.deepPurple,
                borderRadius: BorderRadius.circular(8),
                badgeContent:
                Text('BADGE', style: TextStyle(color: Colors.white)),
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
                "Gaming devices",
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Gaming item"),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(KAppIcons.cart),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    ),
  );
}
