import 'package:flutter/material.dart';
import 'package:kishan_vikas/global/global_vals.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
        itemCount: GlobalVals.chatLists.length,
        separatorBuilder: (_, index) => Divider(
          color: Colors.white70,
        ),
        itemBuilder: (context, index) {
          return Container(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 1.h),
              child: IntrinsicHeight(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          GlobalVals.chatLists[index].profileUrl,
                        ),
                        radius: 5.h,
                      ),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            GlobalVals.chatLists[index].userName,
                            style: TextStyle(),
                          ),
                          Text(
                            GlobalVals.chatLists[index].productName,
                            style: TextStyle(
                              color: Colors.grey.shade300,
                            ),
                          ),
                          Text(
                            GlobalVals.chatLists[index].message,
                            style: TextStyle(
                              color: Colors.grey.shade400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(
                        GlobalVals.chatLists[index].date,
                        style: TextStyle(fontSize: 13.sp),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
