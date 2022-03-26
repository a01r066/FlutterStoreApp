import 'package:flutter/material.dart';
import 'package:flutter_store_app/controllers/main_controller.dart';
import 'package:flutter_store_app/controllers/theme_controller.dart';
import 'package:flutter_store_app/helpers/kapp_icons.dart';
import 'package:flutter_store_app/pages/widgets/home_widget.dart';
import 'package:flutter_store_app/pages/widgets/sliding_up_menu.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final themeController = Get.find<ThemeController>();

  @override
  void initState() {
    super.initState();
  }

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
              ? SlidingUpMenu(isVisible: themeController.isMenuShowed.value,)
              : HomeWidget()),
    );
  }
}
