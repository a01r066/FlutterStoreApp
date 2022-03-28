import 'package:flutter/material.dart';
import 'package:flutter_store_app/controllers/main_controller.dart';
import 'package:flutter_store_app/controllers/theme_controller.dart';
import 'package:flutter_store_app/helpers/kapp_icons.dart';
import 'package:flutter_store_app/pages/cart/cart_page.dart';
import 'package:flutter_store_app/pages/feeds/feeds_page.dart';
import 'package:flutter_store_app/pages/home/home_page.dart';
import 'package:flutter_store_app/pages/search/search_page.dart';
import 'package:flutter_store_app/pages/settings/user_info_page.dart';
import 'package:flutter_store_app/pages/shared/bottom_nav_bar_widget.dart';
import 'package:flutter_store_app/pages/sidebar/sidebar_widget.dart';
import 'package:get/get.dart';
import '../../helpers/theme_data.dart';

class AppWidget extends StatefulWidget {
  @override
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> with TickerProviderStateMixin {
  final themeController = Get.find<ThemeController>();
  final mainController = Get.find<MainController>();

  late List<Map<String, Widget>> _pages;

  late Animation<Offset> sidebarAnimation;
  late Animation<double> fadeAnimation;

  // late AnimationController sidebarAnimationController;
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

    // Sidebar animation
    mainController.sidebarAnimationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 250),
    );

    sidebarAnimation = Tween<Offset>(
      begin: Offset(-1, 0),
      end: Offset(0, 0),
    ).animate(CurvedAnimation(
        parent: mainController.sidebarAnimationController,
        curve: Curves.easeInOut));

    fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(
      CurvedAnimation(
          parent: mainController.sidebarAnimationController,
          curve: Curves.easeInOut),
    );

    super.initState();
  }

  @override
  void dispose() {
    mainController.sidebarAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: Styles.themeData(themeController.isDarkMode, context),
        home: Stack(
          children: [
            Scaffold(
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
            SlideTransition(
              position: sidebarAnimation,
              child: SidebarWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
