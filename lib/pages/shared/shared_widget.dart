import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

Widget HeaderWidget({required String title, IconData? iconData}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        title,
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      Icon(iconData, color: Colors.grey,),
    ],
  );
}

class MatIconButton extends StatelessWidget {
  const MatIconButton({
    Key? key, required this.iconData, Color? gColor,  required this.callback, this.bColor,
  }) : super(key: key);

  final IconData iconData;
  final Color? bColor;
  final Function() callback;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40.0,
      height: 40.0,
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0),),
        padding: EdgeInsets.all(0),
        splashColor: Colors.transparent,
        color: bColor,
        onPressed: callback,
        child: Icon(
          iconData,
        ),
      ),
    );
  }
}