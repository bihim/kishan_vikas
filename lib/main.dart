import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kishan_vikas/bindings/main_binding.dart';
import 'package:kishan_vikas/bindings/product_ad_binding.dart';
import 'package:kishan_vikas/bindings/product_details_binding.dart';
import 'package:kishan_vikas/view/auth/screen/login_screen.dart';
import 'package:kishan_vikas/view/categories/screen/category_wise_screen.dart';
import 'package:kishan_vikas/view/main/screen/main_screen.dart';
import 'package:kishan_vikas/view/notification/screen/notification_screen.dart';
import 'package:kishan_vikas/view/post_add/screen/post_add_screen.dart';
import 'package:kishan_vikas/view/product_details/screen/product_details_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return GetMaterialApp(
        title: 'Kishan Vikas',
        theme:
            ThemeData(primarySwatch: Colors.red, brightness: Brightness.dark),
        initialRoute: Routes.main,
        debugShowCheckedModeBanner: false,
        getPages: [
          GetPage(
            name: Routes.main,
            page: () => MainScreen(),
            binding: MainBinding(),
            transition: Transition.cupertino
          ),
          GetPage(
            name: Routes.productDetailsScreen,
            page: () => ProductDetailsScreen(),
            binding: ProductDetailsBinding(),
            transition: Transition.cupertino
          ),
          GetPage(
            name: Routes.login,
            page: () => LoginScreen(),
            transition: Transition.cupertino
            //binding: ProductDetailsBinding(),
          ),
          GetPage(
            name: Routes.postAd,
            page: () => PostAddScreen(),
            binding: ProductAdBinding(),
            transition: Transition.cupertino
          ),
          GetPage(
            name: Routes.categoryWise,
            page: () => CategoryWiseScreen(),
            transition: Transition.cupertino
          ),
          GetPage(
            name: Routes.notification,
            page: () => NotificationScreen(),
            transition: Transition.cupertino
          ),
        ],
      );
    });
  }
}
