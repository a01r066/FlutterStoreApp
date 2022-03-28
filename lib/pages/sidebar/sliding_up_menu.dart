import 'package:flutter/material.dart';
import 'package:flutter_store_app/controllers/theme_controller.dart';
import 'package:get/get.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class SlidingUpMenu extends StatefulWidget {
  final themeController = Get.find<ThemeController>();
  final bool isVisible;

  SlidingUpMenu({Key? key,  required this.isVisible,}) : super(key: key);

  @override
  State<SlidingUpMenu> createState() => _SlidingUpMenuState();
}

class _SlidingUpMenuState extends State<SlidingUpMenu> {
  @override
  Widget build(BuildContext context) {
    return SlidingUpPanel(
      defaultPanelState: PanelState.OPEN,
      backdropEnabled: true,
      onPanelClosed: () {
        widget.themeController.isMenuShowed.value = false;
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
}