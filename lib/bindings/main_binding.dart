import 'package:get/get.dart';
import 'package:kishan_vikas/controllers/home_controller.dart';
import 'package:kishan_vikas/controllers/main_controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MainController());  
    Get.lazyPut(() => HomeController());  
  }
}
