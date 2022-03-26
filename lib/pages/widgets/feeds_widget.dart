import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_store_app/helpers/kapp_icons.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

Widget FeedsCardWidget(BuildContext context) {
  return Container(
    margin: EdgeInsets.all(12.0),
    decoration: BoxDecoration(
      color: Theme.of(context).backgroundColor,
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(8.0),
        bottomRight: Radius.circular(8.0),
      ),
    ),
    child: Column(
      children: [
        Flexible(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    constraints: BoxConstraints(
                        minHeight: 100.0,
                        maxHeight: 170.0),
                    child:
                      Image.asset('assets/images/CatWatches.jpg', fit: BoxFit.fitWidth,),
                    // Image.network(
                    //   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4PdHtXka2-bDDww6Nuect3Mt9IwpE4v4HNw&usqp=CAU',
                    //   fit: BoxFit.fitWidth,
                    // ),
                  ),
                  Positioned(
                    top: 12.0,
                    left: 12.0,
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
                "Samsung Samsung Samsung Samsung Samsung Samsung ",
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                height: 8.0,
              ),
              Text("\$179.99"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("Subtitle"), Icon(MdiIcons.dotsHorizontal)],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
