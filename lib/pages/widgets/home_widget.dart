import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_store_app/helpers/kapp_icons.dart';
import 'package:get/get.dart';
import '../../controllers/main_controller.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  final mainController = Get.find<MainController>();
  CarouselController carouselController = CarouselController();
  List<int> items = [1, 2, 3, 4, 5];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 190.0,
              width: double.infinity,
              child: CarouselSlider.builder(
                carouselController: carouselController,
                itemCount: items.length,
                itemBuilder:
                    (BuildContext context, int itemIndex, int pageViewIndex) {
                  return HomeCarousel(
                    item: items[itemIndex],
                  );
                },
                options: CarouselOptions(
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.8,
                  initialPage: mainController.currentPage,
                  enableInfiniteScroll: true,
                  reverse: false,
                  // autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  onPageChanged: (index, _) {
                    mainController.setCurrentPage(index);
                  },
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
            Positioned(
              top: 190 / 2 - 32,
              child: IconButton(
                icon: Icon(
                  KAppIcons.chevronLeft,
                  size: 48.0,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                onPressed: () {
                  // carouselController.previousPage(
                  //     duration: Duration(microseconds: 300),
                  //     curve: Curves.linear);
                  carouselController.animateToPage(
                      mainController.currentPage - 1,
                      duration: Duration(milliseconds: 300),
                      curve: Curves.linear);
                },
              ),
            ),
            Positioned(
              top: 190 / 2 - 32,
              right: 0.0,
              child: IconButton(
                icon: Icon(
                  KAppIcons.chevronRight,
                  size: 48.0,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                onPressed: () {
                  // carouselController.nextPage(
                  //     duration: Duration(microseconds: 300),
                  //     curve: Curves.linear);
                  carouselController.animateToPage(
                      mainController.currentPage + 1,
                      duration: Duration(milliseconds: 300),
                      curve: Curves.linear);
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class HomeCarousel extends StatelessWidget {
  final int item;

  const HomeCarousel({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 5.0),
      decoration: BoxDecoration(color: Colors.amber),
      child: Text(
        'text $item',
        style: TextStyle(fontSize: 16.0),
      ),
    );
  }
}
