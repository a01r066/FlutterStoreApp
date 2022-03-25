import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';

class StorageController extends GetxController {
  final storage = const FlutterSecureStorage();

  Future<bool> readTheme(String key) async {
    final value = await storage.read(key: key);
    if(value == null){
      return false;
    }
    return value == 'true';
  }

  Future<void> writeTheme(String key, bool value) async {
    await storage.write(key: key, value: '$value');
  }
}