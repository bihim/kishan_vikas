import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeNavigationDrawer extends StatelessWidget {
  const HomeNavigationDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
            ),
            child: Column(
              children: [
                Image.asset(
                  "assets/logo.png",
                  width: 30.w,
                ),
                SizedBox(
                  height: 2.h,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Login"),
                ),
              ],
            ),
          ),
          ListTile(
            title: Text(
              "Add Listing",
              style: TextStyle(
                color: Colors.amber.shade800,
              ),
            ),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
