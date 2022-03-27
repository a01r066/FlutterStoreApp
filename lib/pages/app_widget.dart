import 'package:flutter/material.dart';
import 'package:flutter_store_app/controllers/main_controller.dart';
import 'package:flutter_store_app/controllers/theme_controller.dart';
import 'package:flutter_store_app/helpers/kapp_icons.dart';
import 'package:flutter_store_app/pages/cart_page.dart';
import 'package:flutter_store_app/pages/feeds_page.dart';
import 'package:flutter_store_app/pages/home_page.dart';
import 'package:flutter_store_app/pages/search_page.dart';
import 'package:flutter_store_app/pages/user_info_page.dart';
import 'package:flutter_store_app/pages/widgets/shared/bottom_nav_bar_widget.dart';
import 'package:get/get.dart';
import '../helpers/theme_data.dart';

class AppWidget extends StatefulWidget {
  @override
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  final themeController = Get.find<ThemeController>();
  final mainController = Get.find<MainController>();

  late List<Map<String, Widget>> _pages;

  @override
  void initState() {
    _pages = [
      {'page': HomePage()},
      {'page': FeedsPage()},
      {'page': SearchPage()},
      {'page': CartPage()},
      {'page': UserInfoPage()},
    ];
    themeController.getTheme();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() =>
      GetMaterialApp(
        debugShowCheckedModeBanner: false,
          theme: Styles.themeData(themeController.isDarkMode, context),
        home: Scaffold(
          body: Container(
            child: _pages[mainController.currentPageIndex]['page'],
          ),
          bottomNavigationBar: BottomAppBar(
            shape: CircularNotchedRectangle(),
            notchMargin: 0.01,
            clipBehavior: Clip.antiAlias,
            child: BottomNavBarWidget(),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.miniCenterDocked,
          floatingActionButton: Padding(
            padding: EdgeInsets.all(8.0),
            child: FloatingActionButton(
              hoverElevation: 10,
              splashColor: Colors.grey,
              tooltip: "Search",
              elevation: 4,
              child: Icon(KAppIcons.search),
              onPressed: () {
                setState(
                  () {
                    mainController.setCurrentPageIndex(2);
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
