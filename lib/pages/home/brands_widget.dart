import 'package:flutter/material.dart';
import 'package:flutter_store_app/controllers/api_controller.dart';
import 'package:flutter_store_app/controllers/main_controller.dart';
import 'package:flutter_store_app/helpers/kconstants.dart';
import 'package:flutter_store_app/models/brand.dart';
import 'package:flutter_store_app/pages/brands/brands_page.dart';
import 'package:get/get.dart';

class BrandsWidget extends StatefulWidget {
  @override
  _BrandsWidgetState createState() => _BrandsWidgetState();
}

class _BrandsWidgetState extends State<BrandsWidget> {
  final apiController = Get.find<ApiController>();
  final mainController = Get.find<MainController>();
  List<Brand> brands = [];

  @override
  void initState() {
    super.initState();
    brands = apiController.getBrands();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64.0,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: GestureDetector(
              onTap: (){
                mainController.brandSelectedIndex.value = index;
                Navigator.push(context, MaterialPageRoute(builder: (context) => BrandsPage(brand: brands[index])));
              },
                child: BrandCardWidget(brand: brands[index])),
          );
        },
        itemCount: brands.length,
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
      ),
    );
  }
}

class BrandCardWidget extends StatelessWidget {
  final Brand brand;
  const BrandCardWidget({Key? key, required this.brand}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 3,
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        borderRadius: BorderRadius.circular(8.0),
        image: DecorationImage(
          image: AssetImage(brand.imageUrl ?? KConstant.noPhoto),
          fit: BoxFit.fill,
        ),
      ),
      child: Text(""),
    );
  }
}