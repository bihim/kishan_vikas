import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kishan_vikas/bindings/home_bind.dart';
import 'package:kishan_vikas/view/home/screen/home_screen.dart';
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
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        initialRoute: Routes.home,
        debugShowCheckedModeBanner: false,
        getPages: [
          GetPage(
              name: Routes.home, page: () => HomeScreen(), binding: HomeBind()),
        ],
      );
    });
  }
}
