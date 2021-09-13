import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kishan_vikas/controllers/main_controller.dart';
import 'package:kishan_vikas/global/global_vals.dart';
import 'package:kishan_vikas/view/main/components/main_screen_navigation_drawer.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class MainScreen extends StatelessWidget {
  final MainController _mainController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "assets/logo.png",
          width: 30.w,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications),
          ),
        ],
      ),
      drawer: MainScreenNavigationDrawer(),
      backgroundColor: Colors.grey.shade900,
      body: Obx(
        () => IndexedStack(
          index: _mainController.bottomNavIndex.value,
          children: GlobalVals.bottomNavScreens,
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
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
      ),
    );
  }
}
