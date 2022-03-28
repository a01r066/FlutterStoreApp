import 'package:flutter/material.dart';
import 'package:flutter_store_app/controllers/main_controller.dart';
import 'package:get/get.dart';
import '../../helpers/kapp_icons.dart';

class SidebarWidget extends StatefulWidget {
  @override
  _SidebarWidgetState createState() => _SidebarWidgetState();
}

class _SidebarWidgetState extends State<SidebarWidget> {
  final mainController = Get.find<MainController>();
  List<int> items = [1, 2, 3, 4, 5, 6, 7,];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 40.0),
          width: MediaQuery
              .of(context)
              .size
              .width * 1.0,
          decoration: BoxDecoration(
            color: Theme.of(context).backgroundColor,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20.0),
            ),
          ),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 80.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20.0),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 12.0,
                            ),
                            Container(
                              width: 50.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                              child: Image.asset(
                                'assets/icons/ic_guest.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 12.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Title",
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w500,
                                        color:
                                        Theme
                                            .of(context)
                                            .colorScheme
                                            .primary),
                                  ),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Text(
                                    "Subtitle",
                                    style: TextStyle(
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w500,
                                        color: Theme
                                            .of(context)
                                            .colorScheme
                                            .secondary),
                                  )
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    top: 8.0,
                    right: 8.0,
                    child: GestureDetector(
                      onTap: (){
                        mainController.sidebarAnimationController.reverse();
                      },
                      child: Icon(
                        KAppIcons.close,
                        size: 32.0,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 100.0,
                decoration: BoxDecoration(
                    color: Theme.of(context).highlightColor
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Icon(
                              KAppIcons.cartCheck,
                              size: 40.0,
                            ),
                            Text(
                              "Item 1",
                              style: TextStyle(
                                fontSize: 14.0,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                              KAppIcons.cartCheck,
                              size: 40.0,
                            ),
                            Text(
                              "Item 2",
                              style: TextStyle(
                                fontSize: 14.0,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                              KAppIcons.cartCheck,
                              size: 40.0,
                            ),
                            Text(
                              "Item 3",
                              style: TextStyle(
                                fontSize: 14.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              ListView.separated(
                padding: EdgeInsets.only(top: 0),
                itemBuilder: (context, index) {
                  return SidebaritemWidget(
                      item: items[index],
                      iconData: KAppIcons.tune,
                      context: context);
                },
                itemCount: items.length,
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                separatorBuilder: (context, index) => Divider(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget SidebaritemWidget(
    {required int item, required IconData iconData, required BuildContext context}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(iconData),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Text("Menu tem $item", style: TextStyle(
              fontSize: 16.0, fontWeight: FontWeight.w400,),
          overflow: TextOverflow.ellipsis,),
        ),
      ],
    ),
  );
}
