import 'package:flutter/material.dart';

class BrandsWidget extends StatefulWidget {
  @override
  _BrandsWidgetState createState() => _BrandsWidgetState();
}

class _BrandsWidgetState extends State<BrandsWidget> {
  List<int> items = [1, 2, 3, 4, 5];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64.0,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: GestureDetector(
              onTap: (){
                print("Tapped: ${items[index]}");
              },
                child: BrandsItemWidget(context: context, item: items[index])),
          );
        },
        itemCount: items.length,
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
      ),
    );
  }
}

Widget BrandsItemWidget({required BuildContext context, required int item}) {
  return Container(
    width: MediaQuery.of(context).size.width / 3,
    decoration: BoxDecoration(
      color: Theme.of(context).scaffoldBackgroundColor,
      borderRadius: BorderRadius.circular(8.0),
      image: DecorationImage(
        image: AssetImage('assets/images/h&m.jpg'),
        fit: BoxFit.fill,
      ),
    ),
    child: Text(
      "Brand Item",
    ),
  );
}
