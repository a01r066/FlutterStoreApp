import 'package:flutter/animation.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  // Bottom navigation bar
  final _currentPageIndex = 0.obs;
  int get currentPageIndex => _currentPageIndex.value;
  setCurrentPageIndex(int page) {
    _currentPageIndex.value = page;
  }

  // Banner carousel
  final _currentBannerIndex = 0.obs;
  int get currentBannerIndex => _currentBannerIndex.value;
  setCurrentBannerIndex(int page) {
    _currentBannerIndex.value = page;
  }

  // Sidebar
  late AnimationController sidebarAnimationController;
}
