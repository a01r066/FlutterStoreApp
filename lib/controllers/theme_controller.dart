import 'package:flutter_store_app/controllers/storage_controller.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController {
  final _storageController = Get.find<StorageController>();
  final _isDarkMode = false.obs;
  bool get isDarkMode => _isDarkMode.value;

  Future<void> getTheme() async {
    final value = await _storageController.readTheme('isDarkMode');
    _isDarkMode.value = value;
  }

  Future<void> setTheme(bool value) async {
    _isDarkMode.value = value;
    await _storageController.writeTheme('isDarkMode', value);
  }
}