import 'package:annabellegetx/controller/category_controller.dart';
import 'package:annabellegetx/utils/style.dart';
import 'package:annabellegetx/view/menu.dart';
import 'package:annabellegetx/view/my_bag.dart';
import 'package:annabellegetx/view/my_category.dart';
import 'package:annabellegetx/view/wishlistscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class Navigationbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PersistentTabController _controller;

    CategoryController controller = Get.put(CategoryController());

    _controller = PersistentTabController(initialIndex: 0);

    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: true,
      hideNavigationBar: false,
      navBarStyle: NavBarStyle.simple,
      margin: EdgeInsets.all(10),
      bottomScreenMargin: 0.0,
      popActionScreens: PopActionScreensType.once,
      decoration: NavBarDecoration(
          colorBehindNavBar: Colors.white,
          borderRadius: BorderRadius.circular(8.0)),
      popAllScreensOnTapOfSelectedTab: true,
    );
  }
}

List<Widget> _buildScreens() {
  return [MyCategory(), MyBag(), WishList(), MenuPage()];
}

List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      icon: ImageIcon(
        AssetImage(
          'assets/images/ic_category_black.png',
        ),
      ),
      title: ('CATEGORIES'),
      textStyle: titleTextStyle(),
      contentPadding: 0,
      activeColor: ColorStyles.pink,
      inactiveColor: ColorStyles.black,
    ),
    PersistentBottomNavBarItem(
      icon: ImageIcon(AssetImage('assets/images/ic_my_bag_black.png')),
      title: ('MYBAG'),
      textStyle: titleTextStyle(),
      contentPadding: 0,
      activeColor: ColorStyles.pink,
      inactiveColor: ColorStyles.black,
    ),
    PersistentBottomNavBarItem(
      icon: ImageIcon(AssetImage('assets/images/ic_wishlist_black.png')),
      title: ("WISHLIST"),
      textStyle: titleTextStyle(),
      contentPadding: 0,
      activeColor: ColorStyles.pink,
      inactiveColor: ColorStyles.black,
    ),
    PersistentBottomNavBarItem(
      icon: ImageIcon(AssetImage('assets/images/ic_menu_black.png')),
      title: ("MENU"),
      textStyle: titleTextStyle(),
      contentPadding: 0,
      activeColor: ColorStyles.pink,
      inactiveColor: ColorStyles.black,
    ),
  ];
}

TextStyle titleTextStyle() {
  return TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.bold,
      fontFamily: 'AzoSans',
      color: ColorStyles.black_dark);
}
