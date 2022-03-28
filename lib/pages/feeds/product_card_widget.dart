import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_store_app/pages/shared/shared_widget.dart';

class ProductCardWidget extends StatelessWidget {
  final int item;
  final IconData iconData;
  final Function() callback;

  ProductCardWidget(
      {Key? key,
      required this.item,
      required this.iconData,
      required this.callback})
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
                    image: AssetImage('assets/images/CatFurniture.jpg'),
                    fit: BoxFit.fill,
                  )),
                ),
              ),
              Positioned(
                left: 8.0,
                top: 8.0,
                child: Badge(
                  toAnimate: false,
                  shape: BadgeShape.square,
                  badgeColor: Colors.redAccent,
                  borderRadius: BorderRadius.circular(4),
                  badgeContent:
                      Text('New', style: TextStyle(color: Colors.white)),
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
                  "Apple watch",
                  style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w500),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 4.0,),
                Text(
                  "\$158.99",
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Quantity: 12"),
                    MatIconButton(iconData: iconData, callback: callback),
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
