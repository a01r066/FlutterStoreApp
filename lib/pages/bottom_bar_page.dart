import 'package:flutter/material.dart';
import 'package:flutter_store_app/pages/cart_page.dart';
import 'package:flutter_store_app/pages/feeds_page.dart';
import 'package:flutter_store_app/pages/home_page.dart';
import 'package:flutter_store_app/pages/search_page.dart';
import 'package:flutter_store_app/pages/user_info_page.dart';

class BottomBarPage extends StatefulWidget {

  @override
  _BottomBarPageState createState() => _BottomBarPageState();
}

class _BottomBarPageState extends State<BottomBarPage> {
  int _selectedPageIndex = 0;
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
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: _pages[_selectedPageIndex]['page'],
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 0.01,
        clipBehavior: Clip.antiAlias,
        child: Container(
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
                    icon: Icon(Icons.home), label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.rss_feed), label: "Feeds"),
                BottomNavigationBarItem(
                  activeIcon: null, icon: Icon(null), label: "Search"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.shopping_bag), label: "Cart"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), label: "User"),
              ],
            ),
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
          child: Icon(Icons.search),
          onPressed: () {
            setState(
              () {
                _selectedPageIndex = 2;
              },
            );
          },
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
