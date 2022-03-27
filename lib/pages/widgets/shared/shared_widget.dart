import 'package:flutter/material.dart';

Widget HeaderWidget({required String title, IconData? iconData}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
    child: Row(
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
    ),
  );
}