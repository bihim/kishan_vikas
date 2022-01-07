import 'package:get/get.dart';
import 'package:kishan_vikas/controllers/post_ad_controller.dart';

class ProductAdBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductAdController());
  }
}
