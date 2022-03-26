import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_store_app/helpers/kapp_icons.dart';
import 'package:flutter_store_app/pages/widgets/feeds_widget.dart';

class FeedsPage extends StatefulWidget {
  @override
  State<FeedsPage> createState() => _FeedsPageState();
}

class _FeedsPageState extends State<FeedsPage> {
  List products = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 64.0,
              decoration: BoxDecoration(
                color: Theme.of(context).backgroundColor,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Feeds",
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Badge(
                          badgeContent: Text(
                            '3',
                            style: TextStyle(color: Colors.white),
                          ),
                          child: Icon(
                            KAppIcons.wishlist,
                          ),
                          badgeColor: Colors.redAccent,
                        ),
                        SizedBox(
                          width: 24.0,
                        ),
                        Badge(
                          badgeContent: Text(
                            "4",
                            style: TextStyle(color: Colors.white),
                          ),
                          child: Icon(
                            KAppIcons.cart,
                          ),
                          badgeColor: Colors.blueAccent,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: GridView.count(
                childAspectRatio: 25 / 37,
                crossAxisCount: 2,
                children: List.generate(
                  10,
                  (index) {
                    return FeedsCardWidget(context);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
