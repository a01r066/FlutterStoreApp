import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_store_app/controllers/api_controller.dart';
import 'package:get/get.dart';
import '../../controllers/main_controller.dart';
import '../../helpers/kapp_icons.dart';
import '../../models/kbanner.dart';

class BannerCarouselWidget extends StatefulWidget {
  @override
  _BannerCarouselWidgetState createState() => _BannerCarouselWidgetState();
}

class _BannerCarouselWidgetState extends State<BannerCarouselWidget> {
  final mainController = Get.find<MainController>();
  final apiController = Get.find<ApiController>();
  CarouselController carouselController = CarouselController();
  final banners = [].obs;

  @override
  void initState() {
    super.initState();
    banners.value = apiController.getBanners();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 190.0,
          width: double.infinity,
          child: CarouselSlider.builder(
            carouselController: carouselController,
            itemCount: banners.length,
            itemBuilder:
                (BuildContext context, int itemIndex, int pageViewIndex) {
              return Obx(() => BannerCardWidget(banner: banners[itemIndex]));
            },
            options: CarouselOptions(
              aspectRatio: 16 / 9,
              viewportFraction: 0.8,
              initialPage: mainController.currentBannerIndex,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              onPageChanged: (index, _) {
                mainController.setCurrentBannerIndex(index);
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
                  mainController.currentBannerIndex - 1,
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
                  mainController.currentBannerIndex + 1,
                  duration: Duration(milliseconds: 300),
                  curve: Curves.linear);
            },
          ),
        ),
      ],
    );
  }
}

class BannerCardWidget extends StatelessWidget {
  const BannerCardWidget({Key? key, required this.banner}) : super(key: key);

  final KBanner banner;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 5.0),
      decoration: BoxDecoration(color: Colors.amber),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(banner.imageUrl),
                  fit: BoxFit.fill),
            ),
            // Blur background
            // child: BackdropFilter(
            //   filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
            //   child: Container(
            //     decoration: BoxDecoration(color: Colors.white.withOpacity(0.5)),
            //   ),
            // ),
          ),
          Positioned(
            bottom: 16.0,
            left: 12.0,
            right: 12.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 32.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          banner.title,
                          style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  height: 40.0,
                  width: MediaQuery.of(context).size.width/2,
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary.withOpacity(0.5),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}