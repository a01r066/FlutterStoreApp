import 'package:flutter/material.dart';

class CategoriesWidget extends StatefulWidget {
  @override
  _CategoriesWidgetState createState() => _CategoriesWidgetState();
}

class _CategoriesWidgetState extends State<CategoriesWidget> {
  List<int> items = [1, 2, 3, 4, 5];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160.0,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.0),
            child: CategoriesItemWidget(context, items[index]),
          );
        },
        itemCount: items.length,
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
      ),
    );
  }
}

Widget CategoriesItemWidget(BuildContext context, int item) {
  return Container(
    width: MediaQuery.of(context).size.width / 3,
    decoration: BoxDecoration(
      color: Theme.of(context).colorScheme.background,
      borderRadius: BorderRadius.circular(6.0),
      // BorderRadius.only(
      //   bottomLeft: Radius.circular(8.0),
      //   bottomRight: Radius.circular(8.0),
      // ),
      // image: DecorationImage(
      //   image: AssetImage('assets/images/CatWatches.jpg'),
      //   fit: BoxFit.fill,
      // ),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          constraints: BoxConstraints(
            minHeight: 64.0,
            maxHeight: 124.0,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8.0),
              topRight: Radius.circular(8.0),
            ),
            image: DecorationImage(
              image: AssetImage('assets/images/CatWatches.jpg'),
              fit: BoxFit.fill,
            ),
          ),
          width: double.infinity,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
          child: Text("Apple watch", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),),
        ),
      ],
    ),
  );
}
