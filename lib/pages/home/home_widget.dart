import 'package:flutter/material.dart';
import 'package:flutter_store_app/helpers/kapp_icons.dart';
import 'package:flutter_store_app/pages/home/brands_widget.dart';
import 'package:flutter_store_app/pages/home/categories_widget.dart';
import 'package:flutter_store_app/pages/cart/popular_products_widget.dart';
import 'package:flutter_store_app/pages/shared/shared_widget.dart';
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
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: BannerCarouselWidget(),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: HeaderWidget(title: "Categories", iconData: KAppIcons.viewMore),
          ),
          CategoriesWidget(),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: HeaderWidget(title: "Popular brands", iconData: KAppIcons.viewMore),
          ),
          BrandsWidget(),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: HeaderWidget(title: "Popular products", iconData: KAppIcons.viewMore),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 40.0),
            child: PopularProductsWidget(),
          ),
        ],
      ),
    );
  }
}
