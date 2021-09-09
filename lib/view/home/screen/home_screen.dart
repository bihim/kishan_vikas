import 'package:flutter/material.dart';
import 'package:kishan_vikas/view/home/components/home_body_components.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../components/home_navigation_drawer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Image.asset(
          "assets/logo.png",
          height: 5.h,
          width: 25.w,
        ),
        backgroundColor: Colors.grey.shade300,
        iconTheme: IconThemeData(color: Colors.grey),
      ),
      endDrawer: HomeNavigationDrawer(),
      body: SingleChildScrollView(child: HomeBodyComponents()),
    );
  }
}
