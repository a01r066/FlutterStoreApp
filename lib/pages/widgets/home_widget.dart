import 'package:flutter/material.dart';
import 'package:flutter_store_app/helpers/kapp_icons.dart';
import 'package:flutter_store_app/pages/carousels/brands_carousel.dart';
import 'package:flutter_store_app/pages/widgets/shared/shared_widget.dart';
import '../carousels/banner_carousel.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BannerCarouselWidget(),
        HeaderWidget(title: "Popular brands", iconData: KAppIcons.viewMore),
        BrandsCarousel(),
      ],
    );
  }
}
