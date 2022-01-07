import 'package:flutter/material.dart';
import 'package:kishan_vikas/global/global_vals.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _profilePicturewithName(),
          SizedBox(
            height: 3.h,
          ),
          _profileAdditionalInfo(),
          SizedBox(
            height: 3.h,
          ),
          _aboutMe(),
          SizedBox(
            height: 3.h,
          ),
          _publishedAds(),
          SizedBox(
            height: 4.h,
          ),
        ],
      ),
    );
  }

  Column _publishedAds() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(2.h),
          child: Text(
            "Published Ads",
            style: TextStyle(
              fontSize: 17.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ListView.separated(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Container(
              color: Colors.black,
              child: Padding(
                padding: EdgeInsets.all(2.h),
                child: IntrinsicHeight(
                  child: Row(
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
                            Text(
                              GlobalVals.demoProductListing[index].productTitle,
                            ),
                            SizedBox(
                              height: 2.h,
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
                                  GlobalVals
                                      .demoProductListing[index].productDate,
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
          itemCount: 3,
        ),
      
      ],
    );
  }

  Column _aboutMe() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(2.h),
          child: Text(
            "About Me",
            style: TextStyle(
              fontSize: 17.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          color: Colors.black,
          child: Padding(
            padding: EdgeInsets.all(2.h),
            child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud."),
          ),
        )
      ],
    );
  }

  Container _profileAdditionalInfo() {
    return Container(
      color: Colors.black,
      child: ListView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: [
          ListTile(
            leading: Icon(
              Icons.call_outlined,
            ),
            title: Text("012345678"),
          ),
          ListTile(
            leading: Icon(
              Icons.email_outlined,
            ),
            title: Text("mail@demo.com"),
          ),
          ListTile(
            leading: Icon(
              Icons.language_outlined,
            ),
            title: Text("www.demo.com"),
          ),
        ],
      ),
    );
  }

  Container _profilePicturewithName() {
    return Container(
      color: Colors.black,
      child: Padding(
        padding: EdgeInsets.all(2.h),
        child: IntrinsicHeight(
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://www.pngarts.com/files/11/Avatar-PNG-Transparent-Image.png"),
                  radius: 5.h,
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("John Doe"),
                    Text(
                      "Active since : Oct '16",
                      style: TextStyle(
                        fontSize: 14.sp,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
