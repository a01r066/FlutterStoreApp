import 'package:flutter/material.dart';
import 'package:flutter_store_app/controllers/main_controller.dart';
import 'package:get/get.dart';
import '../../helpers/kapp_icons.dart';

class BottomNavBarWidget extends StatefulWidget {
  const BottomNavBarWidget({Key? key,}) : super(key: key);

  @override
  State<BottomNavBarWidget> createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  final mainController = Get.find<MainController>();

  @override
  Widget build(BuildContext context) {
    return Container(
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
        currentIndex: mainController.currentPageIndex,
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
    );
  }

  _selectPage(int index) {
    setState(() {
      mainController.setCurrentPageIndex(index);
    });
  }
}
