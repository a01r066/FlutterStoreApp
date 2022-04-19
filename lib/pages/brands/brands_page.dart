import 'package:flutter/material.dart';
import 'package:flutter_store_app/controllers/api_controller.dart';
import 'package:flutter_store_app/helpers/kconstants.dart';
import 'package:flutter_store_app/models/brand.dart';
import 'package:flutter_store_app/models/product.dart';
import 'package:flutter_store_app/pages/products/product_detail_page.dart';
import 'package:flutter_store_app/pages/shared/shared_widget.dart';
import 'package:get/get.dart';

import '../../controllers/main_controller.dart';
import '../../helpers/number_formatter.dart';

class BrandsPage extends StatefulWidget {
  final Brand brand;

  const BrandsPage({Key? key, required this.brand}) : super(key: key);

  @override
  State<BrandsPage> createState() => _BrandsPageState();
}

class _BrandsPageState extends State<BrandsPage> {
  final apiController = Get.find<ApiController>();
  final mainController = Get.find<MainController>();
  final brands = [].obs;
  final products = [].obs;

  @override
  void initState() {
    super.initState();
    products.value = apiController.getProductByBrandId(widget.brand.id);
  }

  @override
  Widget build(BuildContext context) {
    brands.value = apiController.getBrands();

    return Scaffold(
      appBar: AppBar(
        title: Text(brands[mainController.brandSelectedIndex.value].title),
      ),
      body: Row(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: 52.0,
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(color: Theme.of(context).focusColor),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ListView.builder(
                    itemBuilder: (context, index) {
                      return Obx(
                        () => BrandItemWidget(
                          brand: brands[index],
                          isSelected:
                              index == mainController.brandSelectedIndex.value,
                          callback: () {
                            setState(() {
                              mainController.brandSelectedIndex.value = index;
                              if(brands[index].id != 'all'){
                                products.value = apiController
                                    .getProductByBrandId(brands[index].id);
                              } else {
                               products.value = apiController.getBrandProducts();
                              }
                            });
                          },
                        ),
                      );
                    },
                    itemCount: brands.length,
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width - 52.0,
            height: MediaQuery.of(context).size.height,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12.0, vertical: 6.0),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProductDetailPage(
                                    product: products[index])));
                      },
                      child: ProductRowWidget(product: products[index])),
                );
              },
              itemCount: products.length,
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
            ),
          ),
        ],
      ),
    );
  }
}

class BrandItemWidget extends StatelessWidget {
  final mainController = Get.find<MainController>();
  final Brand brand;
  final bool isSelected;
  final Function() callback;

  BrandItemWidget(
      {Key? key,
      required this.brand,
      required this.isSelected,
      required this.callback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RotatedBox(
          quarterTurns: -1,
          child: GestureDetector(
            onTap: callback,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Text(
                brand.title,
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                    color: isSelected
                        ? Theme.of(context).hintColor
                        : Theme.of(context).colorScheme.primary,
                    decoration: isSelected
                        ? TextDecoration.underline
                        : TextDecoration.none),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ProductRowWidget extends StatelessWidget {
  final Product product;

  const ProductRowWidget({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 96.0,
      decoration: BoxDecoration(
        color: Theme.of(context).backgroundColor,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(12.0),
          bottomRight: Radius.circular(12.0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Image.asset(
          //   product.imageUrl ?? KConstant.noPhoto,
          //   fit: BoxFit.contain,
          //   width: 96.0,
          // ),
          Container(
            width: 96.0,
            height: 96.0,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        product.imageUrl),
                    fit: BoxFit.contain)),
          ),
          SizedBox(
            width: 12.0,
          ),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Flexible(
                  child: Text(
                    product.title,
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Total: \$${formatter.format(product.price)}",
                      style: TextStyle(
                          color: Theme.of(context).hintColor, fontSize: 20.0),
                    ),
                  ],
                ),
                Text(product.categoryId),
              ],
            ),
          )
        ],
      ),
    );
  }
}
