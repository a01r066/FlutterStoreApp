import 'package:flutter_store_app/controllers/theme_controller.dart';
import 'package:get/get.dart';

class MainBinding implements Bindings {
  @override
  void dependencies() {
    // Get.lazyPut(() => () => ThemeController());
  }
}