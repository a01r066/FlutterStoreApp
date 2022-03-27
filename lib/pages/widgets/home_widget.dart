import 'package:flutter/material.dart';
import 'package:flutter_store_app/helpers/kapp_icons.dart';
import 'package:flutter_store_app/pages/widgets/brands_widget.dart';
import 'package:flutter_store_app/pages/widgets/categories_widget.dart';
import 'package:flutter_store_app/pages/widgets/products_widget.dart';
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
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: BannerCarouselWidget(),
          ),
          HeaderWidget(title: "Categories", iconData: KAppIcons.viewMore),
          CategoriesWidget(),
          HeaderWidget(title: "Popular brands", iconData: KAppIcons.viewMore),
          BrandsWidget(),
          HeaderWidget(title: "Popular products", iconData: KAppIcons.viewMore),
          ProductsWidget(),
        ],
      ),
    );
  }
}
