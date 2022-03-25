import 'package:flutter/material.dart';
import 'package:flutter_store_app/controllers/theme_controller.dart';
import 'package:flutter_store_app/pages/app_widget.dart';
import 'package:get/get.dart';

void main() {
  Get.lazyPut(() => ThemeController());
  runApp(AppWidget());
}