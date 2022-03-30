import 'package:flutter/material.dart';
import 'package:flutter_store_app/controllers/api_controller.dart';
import 'package:flutter_store_app/helpers/kapp_icons.dart';
import 'package:flutter_store_app/helpers/kcolors.dart';
import 'package:flutter_store_app/helpers/kconstants.dart';
import 'package:flutter_store_app/pages/shared/shared_widget.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../../helpers/number_formatter.dart';
import '../../models/cart_item.dart';

class CartItemWidget extends StatelessWidget {
  final apiController = Get.find<ApiController>();
  final Function() deleteCallback;
  final Function() minusCallback;
  final Function() plusCallback;

  CartItemWidget(
      {Key? key,
      required this.cartItem,
      required this.deleteCallback,
      required this.minusCallback,
      required this.plusCallback})
      : super(key: key);

  final CartItem cartItem;

  @override
  Widget build(BuildContext context) {
    final product = apiController.getProductById(cartItem.itemId);
    return Column(
      children: [
        Container(
          height: 128.0,
          decoration: BoxDecoration(
            color: Theme.of(context).backgroundColor,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(12.0),
              bottomRight: Radius.circular(12.0),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Image.asset(
              //   'assets/images/CatWatches.jpg',
              //   fit: BoxFit.contain,
              //   width: 128.0,
              // ),
              Container(
                constraints: BoxConstraints(minWidth: 64.0, maxWidth: 128.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      product.imageUrl,
                    ),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              SizedBox(
                width: 12.0,
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Text(
                            product.title,
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.bold),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        MatIconButton(
                            iconData: KAppIcons.delete, iconColor: Theme.of(context).hintColor, callback: deleteCallback)
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Price: \$${formatter.format(product.price)}",
                              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "\$${formatter.format(product.price / 10)}",
                              style: TextStyle(decoration: TextDecoration.lineThrough),
                            ),
                            Text(
                              "10% off",
                              style: TextStyle(),
                            ),
                            SizedBox(width: 12.0,),
                          ],
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        ),
                      ],
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Shipping free"),
                        Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            // Material(
                            //   color: Colors.transparent,
                            //   child: InkWell(
                            //     borderRadius: BorderRadius.circular(20.0),
                            //     onTap: () {},
                            //     child: Container(
                            //       height: 40.0,
                            //       width: 40.0,
                            //       child: Icon(
                            //         MdiIcons.minusCircleOutline,
                            //         color: Colors.green,
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            MatIconButton(iconData: KAppIcons.minusCircle, iconColor: Colors.redAccent, callback: minusCallback),
                            Container(
                              width: 52.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4.0),
                                gradient: LinearGradient(
                                  colors: [
                                    KColors.gradiendLStart,
                                    KColors.gradiendLEnd
                                  ],
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text(
                                  "${cartItem.quantity}",
                                  style: TextStyle(
                                      fontSize: 20.0, color: Colors.white),
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            MatIconButton(iconData: KAppIcons.plusCircle, iconColor: Colors.blueAccent, callback: plusCallback),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
