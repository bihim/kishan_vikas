import 'package:flutter/material.dart';
import 'package:kishan_vikas/global/global_vals.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MainScreenNavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Scaffold(
        body: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.grey.shade900,
              ),
              child: Center(
                child: Image.asset(
                  "assets/logo.png",
                  width: 30.w,
                ),
              ),
              /* Column(
                children: [
                  Image.asset(
                    "assets/logo.png",
                    width: 30.w,
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Get.toNamed(Routes.login);
                    },
                    child: Text("Login"),
                  ),
                ],
              ), */
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: GlobalVals.drawerItems.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(
                    GlobalVals.drawerItems[index].icon,
                  ),
                  title: Text(
                    GlobalVals.drawerItems[index].name,
                    style: TextStyle(
                      color: Colors.grey.shade200,
                    ),
                  ),
                  onTap: () {},
                );
              },
            ),
          ],
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.all(3.h),
          child: Container(
            height: 5.h,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: GlobalVals.drawerIcons.length,
                itemBuilder: (context, index) {
                  return IconButton(
                    onPressed: () {},
                    icon: Icon(GlobalVals.drawerIcons[index].iconName),
                    color: Color(GlobalVals.drawerIcons[index].iconColor),
                  );
                }),
          ),
        ),
      ),
    );
  }
}
