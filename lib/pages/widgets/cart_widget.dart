import 'package:flutter/material.dart';
import 'package:flutter_store_app/helpers/kapp_icons.dart';
import 'package:flutter_store_app/helpers/kcolors.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

Widget CartWidget(BuildContext context) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(12.0),
        child: CartItemWidget(context),
      ),
    ],
  );
}

Widget CartItemWidget(BuildContext context) {
  return Container(
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
        Image.asset(
          'assets/images/CatWatches.jpg',
          fit: BoxFit.contain,
          width: 128.0,
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
                  Text("Dell Monitor"),
                  Padding(
                    padding: EdgeInsets.only(right: 12.0),
                    child: Icon(
                      KAppIcons.close,
                      size: 20.0,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Total: \$450.0",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary),
                  ),
                  Text(
                    "SubTotal: \$245.0",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary),
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
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          borderRadius: BorderRadius.circular(20.0),
                          onTap: () {},
                          child: Container(
                            height: 40.0,
                            width: 40.0,
                            child: Icon(
                              MdiIcons.minusCircleOutline,
                              color: Colors.green,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 52.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.0),
                            gradient: LinearGradient(colors: [
                              KColors.gradiendFStart,
                              KColors.gradiendFEnd
                            ])),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            "1",
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          borderRadius: BorderRadius.circular(20.0),
                          onTap: () {},
                          child: Container(
                            height: 40.0,
                            width: 40.0,
                            child: Icon(
                              MdiIcons.plusCircleOutline,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        )
      ],
    ),
  );
}

// Widget CartTopWidget() {
//   return ListTile(
//     title: Text(
//       "Cart(1)",
//       style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
//     ),
//     trailing: Icon(KAppIcons.delete),
//   );
// }

Widget CartEmptyWidget(BuildContext context) {
  return Center(
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 32.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            'assets/images/emptycart.png',
            fit: BoxFit.contain,
          ),
          Column(
            children: [
              Text(
                "Your cart is empty!",
                style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).textSelectionTheme.selectionColor),
              ),
              SizedBox(
                height: 16.0,
              ),
              Text(
                "Look like you haven't add any items in your cart yet!",
                style: TextStyle(
                    fontSize: 16.0, color: Theme.of(context).hintColor),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              "Show Now",
              style: TextStyle(fontSize: 20.0),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.red,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              minimumSize: Size(double.infinity, 40.0),
            ),
          ),
        ],
      ),
    ),
  );
}
