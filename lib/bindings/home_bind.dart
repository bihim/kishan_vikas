import 'package:get/get.dart';
import 'package:kishan_vikas/controllers/home_controller.dart';

class HomeBind extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
  
}
