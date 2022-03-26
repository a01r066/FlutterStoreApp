import 'package:get/get.dart';

class MainController extends GetxController {
   final _currentPage = 0.obs;
   int get currentPage => _currentPage.value;
   setCurrentPage(int page){
     _currentPage.value = page;
   }
}