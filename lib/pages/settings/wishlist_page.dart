import 'package:flutter/material.dart';
import 'package:flutter_store_app/helpers/kcolors.dart';
import 'package:flutter_store_app/pages/shared/empty_page.dart';

import '../../helpers/kapp_icons.dart';

class WishlistPage extends StatefulWidget {
  @override
  _WishlistPageState createState() => _WishlistPageState();
}

class _WishlistPageState extends State<WishlistPage> {
  List<int> items = [1, 2, 3, 4, 5, 6, 7, 1, 2, 3, 4, 5, 6, 7];

  @override
  Widget build(BuildContext context) {
    return items.isEmpty
        ? EmptyPage(
            title: "Your shop list is empty!",
            description: "Explore more and shop list some items",
            iconData: KAppIcons.cartHeart,
            buttonName: "Shopping Now",
            callback: () {
              print("Shopping now");
            },
          )
        : Scaffold(
            appBar: AppBar(
              title: Text("Wishlist(3)"),
            ),
            body: ListView.builder(
              itemBuilder: (context, index) {
                return WishlistItem();
              },
              itemCount: items.length,
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
            ),
          );
  }
}

class WishlistItem extends StatelessWidget {
  const WishlistItem({
    Key? key,
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
                      Image.asset(
                        'assets/images/CatWatches.jpg',
                        height: 96.0,
                        fit: BoxFit.contain,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Full",
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                            Text(
                              "Desc",
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
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
                onPressed: () {
                  print("Delete");
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
