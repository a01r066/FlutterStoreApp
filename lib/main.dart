import 'package:flutter/material.dart';
import 'package:flutter_store_app/controllers/main_controller.dart';
import 'package:flutter_store_app/controllers/storage_controller.dart';
import 'package:flutter_store_app/controllers/theme_controller.dart';
import 'package:flutter_store_app/pages/shared/app_widget.dart';
import 'package:get/get.dart';

void main() {
  Get.lazyPut(() => ThemeController());
  Get.lazyPut(() => StorageController());
  Get.lazyPut(() => MainController());
  runApp(AppWidget());
}