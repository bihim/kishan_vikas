import 'package:get/get.dart';
import 'package:logger/logger.dart';

class HomeController extends GetxController {
  var logger = Logger();

  @override
  void onInit() {
    super.onInit();
    logger.d("OnInit");
  }

  @override
  void onClose() {
    super.onClose();
    logger.d("OnClose");
  }

  @override
  void onReady() {
    super.onReady();
    logger.d("OnInit");
  }

  

}
