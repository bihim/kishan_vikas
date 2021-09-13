import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:kishan_vikas/global/global_vals.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:url_launcher/url_launcher.dart';

class ProductDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.share_outlined)),
        ],
      ),
      bottomNavigationBar: _bottomButtons(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Image.asset(
                GlobalVals.demoProductListing[0].imageUrl,
                fit: BoxFit.contain,
              ),
            ),
            _productInitialDescription(),
            SizedBox(
              height: 3.h,
            ),
            _headerTitle("Ad Details"),
            _description(),
            SizedBox(
              height: 3.h,
            ),
            _headerTitle("Posted By"),
            _postDescription(),
            SizedBox(
              height: 3.h,
            ),
            _headerTitle("Safety Tips"),
            _safetyTips(),
            SizedBox(
              height: 5.h,
            ),
          ],
        ),
      ),
    );
  }

  Padding _bottomButtons() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 2.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ElevatedButton(
            onPressed: () {
              launch("tel://214324234");
            },
            child: Row(
              children: [
                Icon(
                  Icons.call_outlined,
                ),
                SizedBox(
                  width: 2.w,
                ),
                Text(
                  "Call seller",
                ),
              ],
            ),
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                Colors.white,
              ),
            ),
            onPressed: () {
              //launch("tel://214324234");
              Fluttertoast.showToast(msg: "Message Clicked");
            },
            child: Row(
              children: [
                Icon(
                  Icons.message_outlined,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 2.w,
                ),
                Text(
                  "Message",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite_outline,
              color: Colors.red,
              size: 4.h,
            ),
          ),
        ],
      ),
    );
  }

  Container _productInitialDescription() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(),
      ),
      child: Padding(
        padding: EdgeInsets.all(2.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Lethal Super 505",
              style: TextStyle(
                fontSize: 17.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Row(
              children: [
                _productInitialDescriptionItems(
                    Icons.place_outlined, "Kolkata"),
                SizedBox(
                  width: 6.w,
                ),
                _productInitialDescriptionItems(
                    Icons.schedule_outlined, " 2 weeks ago"),
                SizedBox(
                  width: 6.w,
                ),
                _productInitialDescriptionItems(
                    Icons.visibility_outlined, " 3 Views"),
              ],
            ),
            SizedBox(
              height: 2.h,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.red.shade600,
                borderRadius: BorderRadius.circular(2.h),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 1.h,
                  horizontal: 2.h,
                ),
                child: Text(
                  "₹300",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container _productInitialDescriptionItems(IconData iconData, String title) {
    return Container(
      child: Row(
        children: [
          Icon(
            iconData,
            size: 2.h,
          ),
          Text(
            title,
          ),
        ],
      ),
    );
  }

  Container _description() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(),
      ),
      child: Padding(
        padding: EdgeInsets.all(2.h),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              child: Text(
                "Description",
                style: TextStyle(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Container(
              width: double.infinity,
              child: Text(
                "Double action insecticide with xylene. Useful in controlling sucking pests, Caterpillars, Red slug etc. High knockdown property, quick action against targeted pests. Compatible with other insecticide, fungicides & growth promoters.",
                style: TextStyle(
                  fontSize: 15.sp,
                ),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Row(
              children: [
                Icon(Icons.menu_outlined),
                SizedBox(
                  width: 2.w,
                ),
                Text(
                  "Additional Details",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 17.sp),
                ),
              ],
            ),
            SizedBox(
              height: 3.h,
            ),
            _additionalDetailsItems("Company", "Insectisides"),
            SizedBox(
              height: 1.h,
            ),
            _additionalDetailsItems("Quantity", "500gm"),
            SizedBox(
              height: 2.h,
            ),
          ],
        ),
      ),
    );
  }

  Container _additionalDetailsItems(String text1, String text2) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade800,
        borderRadius: BorderRadius.circular(
          1.h,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(2.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text1,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              text2,
              style: TextStyle(),
            ),
          ],
        ),
      ),
    );
  }

  Padding _headerTitle(String title) {
    return Padding(
      padding: EdgeInsets.all(2.h),
      child: Container(
        width: double.infinity,
        child: Text(
          title,
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Container _postDescription() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(),
      ),
      child: Padding(
        padding: EdgeInsets.all(2.h),
        child: Column(
          children: [
            IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex: 1,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 4.h,
                      child: Padding(
                        padding: EdgeInsets.all(0.5.h),
                        child: FlutterLogo(
                          size: 6.h,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Expanded(
                    flex: 4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Posted by",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          "A Random User",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            _postedItems(Icons.place_outlined, "Location", "Kolkata"),
            SizedBox(
              height: 2.h,
            ),
            _postedItems(Icons.person_outline, "Joined", "2 weeks ago"),
          ],
        ),
      ),
    );
  }

  Row _postedItems(IconData iconData, String text1, String text2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(
              iconData,
              size: 2.h,
            ),
            Text(" $text1"),
          ],
        ),
        Text(text2),
      ],
    );
  }

  Container _safetyTips() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(),
      ),
      child: Padding(
        padding: EdgeInsets.all(2.h),
        child: Column(
          children: [
            _safetyTipTexts(Icons.done, "Meet seller at a public place"),
            SizedBox(
              height: 1.h,
            ),
            _safetyTipTexts(Icons.done, "Check the item before you buy"),
            SizedBox(
              height: 1.h,
            ),
            _safetyTipTexts(Icons.done, "Pay only after collecting the item"),
          ],
        ),
      ),
    );
  }

  Row _safetyTipTexts(IconData iconData, String text) {
    return Row(
      children: [
        Icon(
          iconData,
          size: 2.h,
        ),
        SizedBox(
          width: 2.w,
        ),
        Text(text),
      ],
    );
  }
}
