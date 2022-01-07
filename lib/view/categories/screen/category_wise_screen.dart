import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kishan_vikas/global/global_vals.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CategoryWiseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        toolbarHeight: 15.h,
        automaticallyImplyLeading: false,
        title: Column(
          children: [
            Container(
              child: TextField(
                decoration: InputDecoration(
                  hintText: Get.arguments["id"] ?? "Category",
                  fillColor: Colors.grey.shade700,
                  filled: true,
                  prefixIcon: IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.grey.shade300,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(1.h),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            Container(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _filterButton("Location", Icons.place_outlined, _sortDialog),
                  Container(
                    color: Colors.white,
                    height: 3.h,
                    width: 0.1.w,
                  ),
                  _filterButton("Sort", Icons.sort_outlined, _sortDialog),
                  Container(
                    color: Colors.white,
                    height: 3.h,
                    width: 0.1.w,
                  ),
                  _filterButton(
                      "Filter", Icons.filter_alt_outlined, _sortDialog),
                ],
              ),
            ),
          ],
        ),
      ),
      body: _listItems(),
    );
  }

  void _sortDialog() {
    Get.defaultDialog(
      title: "Sort By",
      content: Column(
        children: [
          ListTile(
            title: Text("Best Match"),
            onTap: (){},
          ),
          ListTile(
            title: Text("Latest Posted"),
            onTap: (){},
          ),
          ListTile(
            title: Text("Lowest Price"),
            onTap: (){},
          ),
          ListTile(
            title: Text("Highest Price"),
            onTap: (){},
          ),
        ],
      ),
    );
  }

  TextButton _filterButton(
      String buttonText, IconData iconData, VoidCallback voidCallback) {
    return TextButton(
      onPressed: voidCallback,
      child: Row(
        children: [
          Icon(
            iconData,
            color: Colors.white,
            size: 2.5.h,
          ),
          SizedBox(
            width: 2.w,
          ),
          Text(
            buttonText,
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }

  Widget _listItems() {
    return ListView.separated(
      itemBuilder: (context, index) {
        return Container(
          color: Colors.black,
          child: Padding(
            padding: EdgeInsets.all(2.h),
            child: IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 2,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(2.h),
                      child: Container(
                        color: Colors.white,
                        child: Image.asset(
                          GlobalVals.demoProductListing[index].imageUrl,
                          fit: BoxFit.cover,
                          height: 15.h,
                          width: 45.w,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 2.h,
                  ),
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              GlobalVals.demoProductListing[index].productTitle,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.favorite_outline,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.place_outlined,
                              size: 1.5.h,
                              color: Colors.grey,
                            ),
                            SizedBox(width: 1.w),
                            Text(
                              GlobalVals.demoProductListing[index].location,
                              style: TextStyle(
                                fontSize: 14.sp,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Text(
                          "₹ ${GlobalVals.demoProductListing[index].price}",
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.schedule_outlined,
                              size: 1.5.h,
                              color: Colors.grey,
                            ),
                            SizedBox(width: 1.w),
                            Text(
                              GlobalVals.demoProductListing[index].productDate,
                              style: TextStyle(
                                fontSize: 14.sp,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
      separatorBuilder: (context, index) {
        return Container(
          color: Colors.grey.shade900,
          height: 1.h,
        );
      },
      itemCount: GlobalVals.demoProductListing.length,
    );
  }
}
