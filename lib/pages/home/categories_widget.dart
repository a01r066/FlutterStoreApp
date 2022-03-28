import 'package:flutter/material.dart';
import 'package:flutter_store_app/controllers/api_controller.dart';
import 'package:flutter_store_app/helpers/kconstants.dart';
import 'package:flutter_store_app/models/category.dart';
import 'package:get/get.dart';

class CategoriesWidget extends StatefulWidget {
  @override
  _CategoriesWidgetState createState() => _CategoriesWidgetState();
}

class _CategoriesWidgetState extends State<CategoriesWidget> {
  final apiController = Get.find<ApiController>();
  List<Category> categories = [];

  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    categories = apiController.getCategories();
    return Container(
      height: 160.0,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: CategoryCardWidget(category: categories[index],),
          );
        },
        itemCount: categories.length,
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
      ),
    );
  }

  Future<void> fetchCategories() async {
    categories = await apiController.getCategories();
  }
}

class CategoryCardWidget extends StatelessWidget {
  final Category category;
  const CategoryCardWidget({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 3,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        borderRadius: BorderRadius.circular(6.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRect(
            child: Container(
              constraints: BoxConstraints(
                minHeight: 64.0,
                maxHeight: 106.0,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(8.0),
                ),
                image: DecorationImage(
                  image: AssetImage(category.imageUrl ?? KConstant.noPhoto),
                  fit: BoxFit.fill,
                ),
              ),
              width: double.infinity,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
            child: Text(category.title, style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),),
          ),
        ],
      ),
    );
  }
}

