import 'package:flutter/material.dart';
import 'package:flutter_store_app/controllers/main_controller.dart';
import 'package:get/get.dart';
import '../../../helpers/kapp_icons.dart';

class SidebarWidget extends StatefulWidget {
  @override
  _SidebarWidgetState createState() => _SidebarWidgetState();
}

class _SidebarWidgetState extends State<SidebarWidget> {
  final mainController = Get.find<MainController>();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            mainController.sidebarAnimationController.reverse();
          },
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Colors.deepPurpleAccent.withOpacity(0.5),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 40.0),
          decoration: BoxDecoration(
            color: Theme.of(context).backgroundColor,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(16.0),
            ),
          ),
          width: MediaQuery.of(context).size.width * 0.85,
          height: MediaQuery.of(context).size.height,
          child: Center(child: Text("Sidebar")),
        ),
        Positioned(
          top: 40.0,
          right: 16.0,
          child: GestureDetector(
              onTap: () {
                mainController.sidebarAnimationController.reverse();
              },
              child: Icon(
                KAppIcons.close,
                size: 32.0,
              )),
        ),
      ],
    );
  }
}
