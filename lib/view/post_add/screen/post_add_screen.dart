import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kishan_vikas/controllers/post_ad_controller.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PostAddScreen extends StatelessWidget {
  final ProductAdController _productAdController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Post Free Ad"),
      ),
      body: Obx(
        () => SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 2.h,
                ),
                _imageComponents(),
                SizedBox(
                  height: 2.h,
                ),
                _itemName("Ad Details"),
                _blackContainer(
                  _adDetails(),
                ),
                SizedBox(
                  height: 1.h,
                ),
                _itemName("Ad Type"),
                _blackContainer(
                  _adType(),
                ),
                SizedBox(
                  height: 1.h,
                ),
                _itemName("Contact Information"),
                _blackContainer(
                  _contactInformation(),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Container(
                  width: double.infinity,
                  child: Center(
                    child: ElevatedButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.h),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Fluttertoast.showToast(msg: "Add Posted");
                      },
                      child: Padding(
                        padding: EdgeInsets.all(2.h),
                        child: Text("Post Add"),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column _contactInformation() {
    return Column(
      children: [
        TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            hintText: "Enter Mobile Number",
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
            ),
            border: UnderlineInputBorder(
              borderSide: BorderSide.none,
            ),
          ),
        ),
        SizedBox(
          height: 2.h,
        ),
        TextField(
          decoration: InputDecoration(
            hintText: "Enter Address",
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
            ),
            border: UnderlineInputBorder(
              borderSide: BorderSide.none,
            ),
          ),
        ),
        SizedBox(
          height: 3.h,
        ),
      ],
    );
  }

  Column _adType() {
    return Column(
      children: [
        _radioAdType(),
        //_itemName("Brand Name"),
        SizedBox(
          height: 1.h,
        ),
        _selectBrand(),
        //_itemName("Year of Registration"),
        SizedBox(
          height: 1.h,
        ),
        _yearOfRegistration(),
        //_itemName("Price"),
        SizedBox(
          height: 1.h,
        ),
        _price(),
      ],
    );
  }

  Container _blackContainer(Widget widget) {
    return Container(
      color: Colors.black,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 2.h, vertical: 3.h),
        child: widget,
      ),
    );
  }

  Column _adDetails() {
    return Column(
      children: [
        _selectCategory(),
        SizedBox(
          height: 1.h,
        ),
        _titleField(),
        SizedBox(
          height: 1.h,
        ),
        _descriptionField(),
        SizedBox(
          height: 3.h,
        ),
      ],
    );
  }

  TextField _descriptionField() {
    return TextField(
      decoration: InputDecoration(
        hintText: "Tell us more about your advertise",
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

  TextField _titleField() {
    return TextField(
      decoration: InputDecoration(
        hintText: "Enter title of your advertise",
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

  Container _selectCategory() {
    return Container(
      width: double.infinity,
      child: DropdownButton<String>(
        value: _productAdController.dropDownCategory.value,
        iconSize: 24,
        isExpanded: true,
        elevation: 16,
        style: const TextStyle(color: Colors.white),
        underline: Container(
          height: 2,
          color: Colors.white,
        ),
        onChanged: (String? newValue) {
          _productAdController.dropDownCategory.value = newValue!;
        },
        items: _productAdController.dropDownCategoryList
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }

  Row _price() {
    return Row(
      children: [
        Container(
          height: 10.h,
          width: 20.h,
          child: TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: "Price",
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
              ),
              border: UnderlineInputBorder(
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
        Container(
          height: 10.h,
          width: 23.h,
          child: CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            title: const Text('Negotiable'),
            autofocus: false,
            selected: _productAdController.negotiableCheck.value,
            value: _productAdController.negotiableCheck.value,
            onChanged: (bool? value) {
              _productAdController.negotiableCheck.value = value!;
            },
          ),
        ),
      ],
    );
  }

  TextField _yearOfRegistration() {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        hintText: "Year of Registration",
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

  Container _selectBrand() {
    return Container(
      width: double.infinity,
      child: DropdownButton<String>(
        value: _productAdController.dropdownValue.value,
        iconSize: 24,
        isExpanded: true,
        elevation: 16,
        style: const TextStyle(color: Colors.white),
        underline: Container(
          height: 2,
          color: Colors.white,
        ),
        onChanged: (String? newValue) {
          _productAdController.dropdownValue.value = newValue!;
        },
        items: _productAdController.dropDownList
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }

  Widget _radioAdType() {
    return Container(
      transform: Matrix4.translationValues(-15.0, 0.0, 0.0),
      child: Row(
        children: [
          Container(
            child: Row(
              children: [
                Radio(
                  value: "Private",
                  groupValue: _productAdController.adTypeInitValue.value,
                  onChanged: (value) {
                    _productAdController.adTypeInitValue.value =
                        value.toString();
                  },
                ),
                Text("Private"),
              ],
            ),
          ),
          Row(
            children: [
              Radio(
                value: "Professional",
                groupValue: _productAdController.adTypeInitValue.value,
                onChanged: (value) {
                  _productAdController.adTypeInitValue.value = value.toString();
                },
              ),
              Text("Professional"),
            ],
          ),
        ],
      ),
    );
  }

  Widget _itemName(String text) {
    return Padding(
      padding: EdgeInsets.all(2.h),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red.shade900,
          borderRadius: BorderRadius.circular(1.5.h),
        ),
        child: Padding(
          padding: EdgeInsets.all(1.h),
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  Widget _imageComponents() {
    return Container(
      width: double.infinity,
      child: Center(
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            borderRadius: BorderRadius.circular(2.h),
            child: _productAdController.imagePath.value == ""
                ? _pickImage()
                : _showImage(),
            onTap: () {
              _productAdController.pickImage(ImageSource.gallery);
            },
          ),
        ),
      ),
    );
  }

  ClipRRect _showImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(2.h),
      child: Image.file(
        File(_productAdController.imagePath.value),
      ),
    );
  }

  Container _pickImage() {
    return Container(
      height: 10.h,
      width: 25.w,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.red,
        ),
        borderRadius: BorderRadius.circular(2.h),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.add_a_photo_outlined,
            color: Colors.white,
          ),
          Text(
            "Add a photo",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
