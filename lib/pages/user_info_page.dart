import 'package:flutter/material.dart';
import 'package:flutter_store_app/controllers/theme_controller.dart';
import 'package:flutter_store_app/helpers/kapp_icons.dart';
import 'package:flutter_store_app/models/user_info_item.dart';
import 'package:flutter_store_app/pages/widgets/shared/shared_widget.dart';
import 'package:flutter_store_app/pages/widgets/user_info_widget.dart';
import 'package:get/get.dart';
import '../helpers/kcolors.dart';

class UserInfoPage extends StatefulWidget {
  @override
  State<UserInfoPage> createState() => _UserInfoPageState();
}

class _UserInfoPageState extends State<UserInfoPage> {
  final themeController = Get.find<ThemeController>();

  late ScrollController _scrollController;
  var top = 0.0;

  List<UserInfoItem> userInfoItems = [
    UserInfoItem(
        title: "Email", subTitle: "Email sub", iconData: KAppIcons.email),
    UserInfoItem(
        title: "Phone", subTitle: "1-111-222-3", iconData: KAppIcons.phone),
    UserInfoItem(
        title: "Shipping address",
        subTitle: "123 Pasteur st",
        iconData: KAppIcons.address),
    UserInfoItem(
        title: "Joined date", subTitle: "01/01/1991", iconData: KAppIcons.date),
  ];

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          CustomScrollView(
            controller: _scrollController,
            slivers: [
              SliverAppBar(
                automaticallyImplyLeading: false,
                elevation: 4,
                expandedHeight: 200,
                pinned: true,
                flexibleSpace: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    top = constraints.biggest.height;
                    return Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              KColors.starterColor,
                              KColors.endColor,
                            ],
                            begin: const FractionalOffset(0.0, 0.0),
                            end: const FractionalOffset(1.0, 0.0),
                            stops: [0.0, 1.0],
                            tileMode: TileMode.clamp),
                      ),
                      child: FlexibleSpaceBar(
                        collapseMode: CollapseMode.parallax,
                        centerTitle: true,
                        title: Row(
                          //  mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            AnimatedOpacity(
                              duration: Duration(milliseconds: 300),
                              opacity: top <= 110.0 ? 1.0 : 0,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Container(
                                    height: kToolbarHeight / 1.8,
                                    width: kToolbarHeight / 1.8,
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.white,
                                          blurRadius: 1.0,
                                        ),
                                      ],
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: NetworkImage(
                                            'https://cdn1.vectorstock.com/i/thumb-large/62/60/default-avatar-photo-placeholder-profile-image-vector-21666260.jpg'),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Text(
                                    'Guest',
                                    style: TextStyle(
                                        fontSize: 20.0, color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        background: Image(
                          image: NetworkImage(
                              'https://cdn1.vectorstock.com/i/thumb-large/62/60/default-avatar-photo-placeholder-profile-image-vector-21666260.jpg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    );
                  },
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HeaderWidget(title: "User bag"),
                      Divider(
                        thickness: 0.5,
                        color: Colors.grey,
                      ),
                      UserBag(icon: KAppIcons.wishlist, title: "Wishlist"),
                      UserBag(icon: KAppIcons.cartHeart, title: "Cart"),
                      HeaderWidget(title: "User info"),
                      Divider(
                        thickness: 0.5,
                        color: Colors.grey,
                      ),
                      ListView.builder(
                        itemBuilder: (context, index) {
                          final item = userInfoItems[index];
                          return UserInfoWidget(
                            title: item.title,
                            subTitle: item.subTitle,
                            icon: item.iconData,
                          );
                        },
                        itemCount: userInfoItems.length,
                        shrinkWrap: true,
                        physics: ClampingScrollPhysics(),
                      ),
                      HeaderWidget(title: "User setting"),
                      Divider(
                        thickness: 0.5,
                        color: Colors.grey,
                      ),
                      UserSetting(
                        icon: KAppIcons.moon,
                        title: "Dark theme",
                        isOn: themeController.isDarkMode,
                        isHidden: false,
                        onSwitch: (value) {
                          setState(
                            () {
                              themeController.setTheme(value);
                            },
                          );
                        },
                      ),
                      UserSetting(
                        icon: KAppIcons.logout,
                        title: "Logout",
                        isOn: false,
                        isHidden: true,
                        onSwitch: (value) {
                          setState(() {});
                        },
                      ),
                      SizedBox(
                        height: 64.0,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          buildFab(_scrollController),
        ],
      ),
    );
  }
}
