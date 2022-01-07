import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ProductAdController extends GetxController {
  var imagePath = "".obs;
  var adType = ["Private", "Professional"];
  var adTypeInitValue = "".obs;
  var dropdownValue = "Select Brand Name".obs;
  var dropDownList = ["Select Brand Name", "Tata", "Toyota", "BMW"];
  var negotiableCheck = false.obs;
  var dropDownCategory = "Select Category Name".obs;
  var dropDownCategoryList = ["Select Category Name", "New Tractor", "Old Tractor", "Tyres", "Implements", "Seeds", "Pesticides and Fertilizers"];

  void pickImage(ImageSource imageSource) async {
    final ImagePicker imagePicker = ImagePicker();
    final XFile? image = await imagePicker.pickImage(source: imageSource);
    if (image != null) {
      imagePath.value = image.path;
    } else {
      imagePath.value = "";
      Fluttertoast.showToast(msg: "Cancelled Image Picking");
    }
  }
}
