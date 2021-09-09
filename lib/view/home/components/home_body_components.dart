import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:kishan_vikas/global/global_vals.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeBodyComponents extends StatelessWidget {
  const HomeBodyComponents({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _bannerItems(),
        SizedBox(
          height: 2.h,
        ),
        _browseByCategory(),
        SizedBox(
          height: 5.h,
        ),
        _chooseCityOrRegion(),
        SizedBox(
          height: 5.h,
        ),
        Padding(
        padding: EdgeInsets.all(3.h),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(
              2.h,
            ),
          ),
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.all(1.h),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        children: [
                          TextSpan(text: "Browse by "),
                          TextSpan(
                            text: "Category",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Text(
                            "View More",
                            style: TextStyle(
                              color: Colors.grey.shade600,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            Icons.menu,
                            color: Colors.grey.shade600,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemCount: GlobalVals.demoProductListing.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.all(0.4.h),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(2.h),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(GlobalVals
                                .demoHomeGridValues[index].imageUrl),
                            SizedBox(
                              height: 1.h,
                            ),
                            Text(
                              GlobalVals.demoHomeGridValues[index].name,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      )
      ],
    );
  }

  Padding _chooseCityOrRegion() {
    return Padding(
        padding: EdgeInsets.all(3.h),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(
              2.h,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(2.h),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.place,
                      color: Colors.black,
                    ),
                    Text(
                      "Choose a city or region",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.sp),
                    ),
                  ],
                ),
                SizedBox(
                  height: 3.h,
                ),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: GlobalVals.demoLocations.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(GlobalVals.demoLocations[index]),
                      onTap: () {},
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      );
  }

  Padding _browseByCategory() {
    return Padding(
        padding: EdgeInsets.all(3.h),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(
              2.h,
            ),
          ),
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.all(1.h),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        children: [
                          TextSpan(text: "Browse by "),
                          TextSpan(
                            text: "Category",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Text(
                            "View More",
                            style: TextStyle(
                              color: Colors.amber.shade600,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            Icons.menu,
                            color: Colors.amber,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemCount: GlobalVals.demoHomeGridValues.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.all(0.4.h),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(2.h),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(GlobalVals
                                .demoHomeGridValues[index].imageUrl),
                            SizedBox(
                              height: 1.h,
                            ),
                            Text(
                              GlobalVals.demoHomeGridValues[index].name,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      );
  }

  Column _bannerItems() {
    return Column(
      children: [
        Container(
          child: Image.asset("assets/banner.jpeg"),
        ),
        Container(
          color: GlobalVals.homeFormBackgroundColor,
          child: Padding(
            padding: EdgeInsets.all(1.h),
            child: Column(
              children: [
                _bannerTextField(
                  "What?",
                  Icon(Icons.view_week_outlined),
                ),
                SizedBox(
                  height: 1.h,
                ),
                _bannerTextField(
                  "Where?",
                  Icon(Icons.place),
                ),
                Container(
                  width: double.infinity,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(
                        color: Colors.white,
                      ),
                      backgroundColor: GlobalVals.homeFormBackgroundColor,
                    ),
                    onPressed: () {},
                    child: Padding(
                      padding: EdgeInsets.all(2.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          Text(
                            "Find",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  TextField _bannerTextField(String hint, Widget icon) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        fillColor: Colors.white,
        filled: true,
        prefixIcon: icon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(1.h),
          borderSide: BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
      ),
    );
  }
}
