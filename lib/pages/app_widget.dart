import 'package:flutter/material.dart';
import 'package:flutter_store_app/controllers/theme_controller.dart';
import 'package:flutter_store_app/helpers/kapp_icons.dart';
import 'package:flutter_store_app/pages/cart_page.dart';
import 'package:flutter_store_app/pages/feeds_page.dart';
import 'package:flutter_store_app/pages/home_page.dart';
import 'package:flutter_store_app/pages/search_page.dart';
import 'package:flutter_store_app/pages/user_info_page.dart';
import 'package:get/get.dart';
import '../helpers/theme_data.dart';

class AppWidget extends StatefulWidget {
  @override
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  final _themeController = Get.find<ThemeController>();

  int _selectedPageIndex = 0;
  late List<Map<String, Widget>> _pages;

  @override
  void initState() {
    _selectedPageIndex = 1;
    _pages = [
      {'page': HomePage()},
      {'page': FeedsPage()},
      {'page': SearchPage()},
      {'page': CartPage()},
      {'page': UserInfoPage()},
    ];
    _themeController.getTheme();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() =>
      GetMaterialApp(
        debugShowCheckedModeBanner: false,
          theme: Styles.themeData(_themeController.isDarkMode, context),
        home: Scaffold(
          body: Container(
            child: _pages[_selectedPageIndex]['page'],
          ),
          bottomNavigationBar: BottomAppBar(
            shape: CircularNotchedRectangle(),
            notchMargin: 0.01,
            clipBehavior: Clip.antiAlias,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                // border: Border(
                //   top: BorderSide(color: Colors.grey, width: 0.5),
                // ),
              ),
              child: BottomNavigationBar(
                onTap: _selectPage,
                backgroundColor: Theme.of(context).primaryColor,
                unselectedItemColor: Theme.of(context).textSelectionColor,
                selectedItemColor: Colors.purple,
                currentIndex: _selectedPageIndex,
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(KAppIcons.home), label: "Home"),
                  BottomNavigationBarItem(
                      icon: Icon(KAppIcons.feeds), label: "Feeds"),
                  BottomNavigationBarItem(
                    activeIcon: null, icon: Icon(null), label: "Search"),
                  BottomNavigationBarItem(
                      icon: Icon(KAppIcons.cart), label: "Cart"),
                  BottomNavigationBarItem(
                      icon: Icon(KAppIcons.user), label: "User"),
                ],
              ),
            ),
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
                    _selectedPageIndex = 2;
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }
}
