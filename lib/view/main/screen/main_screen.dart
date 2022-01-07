import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kishan_vikas/controllers/main_controller.dart';
import 'package:kishan_vikas/global/global_vals.dart';
import 'package:kishan_vikas/routes/routes.dart';
import 'package:kishan_vikas/view/main/components/main_screen_navigation_drawer.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:badges/badges.dart';

class MainScreen extends StatelessWidget {
  final MainController _mainController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
          appBar: AppBar(
            elevation: 0,
            title: _appBarItem(_mainController.bottomNavIndex.value),
            actions: [
              _mainController.bottomNavIndex.value == 3
                  ? _popupMenuButton()
                  : _notification(),
            ],
          ),
          drawer: MainScreenNavigationDrawer(),
          backgroundColor: Colors.grey.shade900,
          body: IndexedStack(
            index: _mainController.bottomNavIndex.value,
            children: GlobalVals.bottomNavAnimatedScreens,
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.red,
            onPressed: () {
              Get.toNamed(Routes.postAd);
            },
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: AnimatedBottomNavigationBar(
            backgroundColor: Colors.black,
            activeColor: Colors.red.shade800,
            inactiveColor: Colors.white,
            gapLocation: GapLocation.center,
            icons: [
              Icons.home_outlined,
              Icons.favorite_border,
              Icons.chat_outlined,
              Icons.person_outline
            ],
            activeIndex: _mainController.bottomNavIndex.value,
            onTap: (index) {
              _mainController.bottomNavIndex.value = index;
            },
          )
          //_curvedNavigationBar(),
          ),
    );
  }

  PopupMenuButton _popupMenuButton() {
    return PopupMenuButton(
        itemBuilder: (context) => [
              PopupMenuItem(
                child: Text("Edit Profile"),
                value: 1,
              ),
              PopupMenuItem(
                child: Text("Logout"),
                value: 2,
              ),
            ]);
  }

  Widget _notification() {
    return Badge(
      position: BadgePosition.topEnd(top: 2.h, end: 1.5.h),
      child: IconButton(
        onPressed: () {
          Get.toNamed(Routes.notification);
        },
        icon: Icon(Icons.notifications),
      ),
    );
  }

  CurvedNavigationBar _curvedNavigationBar() {
    return CurvedNavigationBar(
      color: Colors.black,
      buttonBackgroundColor: Colors.red.shade800,
      backgroundColor: Colors.grey.shade900,
      items: [
        Icon(Icons.home_outlined),
        Icon(Icons.favorite_border),
        Icon(Icons.add),
        Icon(Icons.chat_outlined),
        Icon(Icons.person_outline),
      ],
      onTap: (index) {
        _mainController.bottomNavIndex.value = index;
      },
    );
  }

  Widget _appBarItem(int index) {
    switch (index) {
      case 0:
        return Image.asset(
          "assets/logo.png",
          width: 30.w,
        );
      case 1:
        return Text("WishList");
      case 2:
        return Text("Chat");
      case 3:
        return Text("Profile");
      default:
        return SizedBox();
    }
  }
}
