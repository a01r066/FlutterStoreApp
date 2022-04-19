import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_store_app/models/product.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../../helpers/number_formatter.dart';

class ProductItemWidget extends StatelessWidget {
  final Product product;

  const ProductItemWidget({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).backgroundColor,
        borderRadius: BorderRadius.circular(8.0)
      ),
      child: Column(
        children: [
          Flexible(
            child: Column(
              children: [
                Stack(
                  children: [
                    ClipRect(
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        constraints:
                            BoxConstraints(minHeight: 96.0, maxHeight: 155.0),
                        child:
                            Image.network(
                          product.imageUrl,
                          fit: BoxFit.contain,
                        ),
                        width: double.infinity,
                      ),
                    ),
                    Positioned(
                      top: 12.0,
                      left: 12.0,
                      child: Badge(
                        toAnimate: false,
                        shape: BadgeShape.square,
                        badgeColor: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(8),
                        badgeContent: Text('BADGE',
                            style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  product.title,
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text("\$${formatter.format(product.price)}"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        product.brandId ?? "",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Icon(MdiIcons.dotsHorizontal),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
