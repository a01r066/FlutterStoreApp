import 'package:flutter/material.dart';
import 'package:flutter_store_app/controllers/theme_controller.dart';
import 'package:flutter_store_app/helpers/kapp_icons.dart';
import 'package:get/get.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final themeController = Get.find<ThemeController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
          appBar: AppBar(
            title: Text("Home"),
            leading: IconButton(
              onPressed: () {
                setState(() {
                  themeController.isMenuShowed.value =
                      !themeController.isMenuShowed.value;
                });
              },
              icon: Icon(themeController.isMenuShowed.value
                  ? KAppIcons.home
                  : KAppIcons.menu),
            ),
          ),
          body: themeController.isMenuShowed.value
              ? SlidingUpMenu(context)
              : Container()),
    );
  }
}

// GetX BottomSheet
Widget SlidingUpMenu(BuildContext context) {
  final themeController = Get.find<ThemeController>();
  return SlidingUpPanel(
    defaultPanelState: PanelState.OPEN,
    backdropEnabled: true,
    onPanelClosed: () {
      themeController.isMenuShowed.value = false;
    },
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(16.0),
      topRight: Radius.circular(16.0),
    ),
    color: Colors.green,
    boxShadow: [
      BoxShadow(color: Colors.grey, offset: Offset(0, -12), blurRadius: 32.0),
    ],
    minHeight: 0,
    maxHeight: MediaQuery.of(context).size.height * 0.75,
    panel: Center(
      child: Text("This is the sliding Widget"),
    ),
  );
}
