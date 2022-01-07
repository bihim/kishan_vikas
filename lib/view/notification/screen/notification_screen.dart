import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:kishan_vikas/global/global_vals.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _notificationData = GlobalVals.notificationData;
    return Scaffold(
      appBar: AppBar(
        title: Text("Notifications"),
        actions: [
          IconButton(
            onPressed: () {
              Get.defaultDialog(
                title: "Mark as all read",
                middleText:
                    "Are you sure you want to mark all notification as read?",
                textConfirm: "Yes",
                textCancel: "Cancel",
                onConfirm: () {
                  Fluttertoast.showToast(msg: "Marked as read");
                  Get.back();
                },
              );
            },
            icon: Icon(Icons.done_all_outlined),
          )
        ],
      ),
      backgroundColor: Colors.grey.shade900,
      body: Container(
        child: ListView.separated(
            itemBuilder: (context, index) {
              return Container(
                color: index % 2 == 0 ? Colors.black : Colors.grey.shade800,
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.all(2.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 2.h,
                      ),
                      Text(
                        _notificationData[index].date,
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Text(
                        _notificationData[index].title,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.sp,
                        ),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Text(
                        _notificationData[index].subtitle,
                        style: TextStyle(),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Row(
                        children: [
                          Spacer(),
                          TextButton(
                            onPressed: () {},
                            child: Text("View"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 2.h,
              );
            },
            itemCount: _notificationData.length),
      ),
    );
  }
}
