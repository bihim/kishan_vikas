import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';

class HomeController extends GetxController {
  var logger = Logger();
  var carouselController = CarouselController();
  var initialItemCarousel = 0.obs;
  var initialItemCarousel2 = 0.obs;

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
    logger.d("OnReady");
  }
}
