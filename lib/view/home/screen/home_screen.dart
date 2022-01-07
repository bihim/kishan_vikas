import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:kishan_vikas/controllers/home_controller.dart';
import 'package:kishan_vikas/global/global_vals.dart';
import 'package:kishan_vikas/routes/routes.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatelessWidget {
  final HomeController _homeController = Get.find();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            _bannerItems(),
            SizedBox(
              height: 6.h,
            ),
            _itemLists(),
            SizedBox(
              height: 1.h,
            ),
            _featureAds(),
            SizedBox(
              height: 1.h,
            ),
            _trendingProducts(),
            SizedBox(
              height: 5.h,
            ),
          ],
        ),
      ),
    );
  }

  Column _trendingProducts() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(2.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Trending Ads",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17.sp,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text("View More"),
              ),
            ],
          ),
        ),
        GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.75,
          ),
          itemCount: GlobalVals.demoProductListing.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  color: Colors.black,
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.all(2.h),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
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
                            SizedBox(
                              height: 1.h,
                            ),
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
                          ],
                        ),
                        onTap: () {
                          Get.toNamed(Routes.productDetailsScreen);
                        },
                      ),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  color: Colors.grey.shade900,
                  height: 2.h,
                ),
              ],
            );
          },
        )
      ],
    );
  }

  Column _featureAds() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(2.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Featured Ads",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17.sp,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text("View More"),
              ),
            ],
          ),
        ),
        Container(
          height: 32.h,
          color: Colors.black,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: GlobalVals.demoProductListing.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.all(2.h),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
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
                        SizedBox(
                          height: 1.h,
                        ),
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
                      ],
                    ),
                    onTap: () {
                      Get.toNamed(Routes.productDetailsScreen);
                    },
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Column _oldDesign(BuildContext context) {
    return Column(
      children: [
        _bannerItems(),
        SizedBox(
          height: 4.h,
        ),
        _bannerSlider(context),
        SizedBox(
          height: 4.h,
        ),
        //_itemLists(),
        _browseByCategory(),
        SizedBox(
          height: 2.h,
        ),
        _bannerSlider2(context),
        SizedBox(
          height: 2.h,
        ),
        _latestAds(),
        SizedBox(
          height: 2.h,
        ),
        _chooseCityOrRegion(),
        _aboutUs(),
        _bannerSlider3(context),
      ],
    );
  }

  Widget _itemLists() {
    return Container(
      color: Colors.black,
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
        itemCount: GlobalVals.demoHomeGridValuesSVG.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(2.h),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                child: Column(
                  children: [
                    SvgPicture.asset(
                      GlobalVals.demoHomeGridValuesSVG[index].imageUrl,
                      height: 5.h,
                      width: 10.w,
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Text(
                      GlobalVals.demoHomeGridValuesSVG[index].name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  Get.toNamed(
                    Routes.categoryWise,
                    arguments: {
                      "id": GlobalVals.demoHomeGridValuesSVG[index].name,
                    },
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }

  Padding _aboutUs() {
    return Padding(
      padding: EdgeInsets.all(1.h),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(2.h),
        ),
        child: Padding(
          padding: EdgeInsets.all(2.h),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.widgets_outlined,
                    size: 5.h,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "18\n",
                          style: TextStyle(
                            fontSize: 22.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: "Free Ads",
                          style: TextStyle(fontSize: 16.sp),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Row(
                children: [
                  Icon(
                    Icons.group_outlined,
                    size: 5.h,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "8\n",
                          style: TextStyle(
                            fontSize: 22.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: "Trusted Sellers",
                          style: TextStyle(fontSize: 16.sp),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Row(
                children: [
                  Icon(
                    Icons.map_outlined,
                    size: 5.h,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "3348+\n",
                          style: TextStyle(
                            fontSize: 22.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: "Locations",
                          style: TextStyle(fontSize: 16.sp),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container _bannerSlider(
    BuildContext context,
  ) {
    return Container(
      height: 35.h,
      width: double.infinity,
      child: Column(children: [
        Expanded(
          child: CarouselSlider(
            items: GlobalVals.imageSliders,
            carouselController: _homeController.carouselController,
            options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 2.0,
                onPageChanged: (index, reason) {
                  _homeController.initialItemCarousel.value = index;
                }),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: GlobalVals.imgList.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () =>
                  _homeController.carouselController.animateToPage(entry.key),
              child: Container(
                width: 12.0,
                height: 12.0,
                margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.black)
                        .withOpacity(
                            _homeController.initialItemCarousel.value ==
                                    entry.key
                                ? 0.9
                                : 0.4)),
              ),
            );
          }).toList(),
        ),
      ]),
    );
  }

  Container _bannerSlider2(
    BuildContext context,
  ) {
    return Container(
      height: 35.h,
      width: double.infinity,
      child: Column(children: [
        Expanded(
          child: CarouselSlider(
            items: GlobalVals.imageSliders,
            carouselController: _homeController.carouselController,
            options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 2.0,
                onPageChanged: (index, reason) {
                  _homeController.initialItemCarousel2.value = index;
                }),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: GlobalVals.imgList.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () =>
                  _homeController.carouselController.animateToPage(entry.key),
              child: Container(
                width: 12.0,
                height: 12.0,
                margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.black)
                        .withOpacity(
                            _homeController.initialItemCarousel2.value ==
                                    entry.key
                                ? 0.9
                                : 0.4)),
              ),
            );
          }).toList(),
        ),
      ]),
    );
  }

  Container _bannerSlider3(
    BuildContext context,
  ) {
    return Container(
      height: 35.h,
      width: double.infinity,
      child: Column(children: [
        Expanded(
          child: CarouselSlider(
            items: GlobalVals.imageSliders,
            carouselController: _homeController.carouselController,
            options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 2.0,
                onPageChanged: (index, reason) {
                  _homeController.initialItemCarousel2.value = index;
                }),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: GlobalVals.imgList.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () =>
                  _homeController.carouselController.animateToPage(entry.key),
              child: Container(
                width: 12.0,
                height: 12.0,
                margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: (Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black)
                      .withOpacity(_homeController.initialItemCarousel2.value ==
                              entry.key
                          ? 0.9
                          : 0.4),
                ),
              ),
            );
          }).toList(),
        ),
      ]),
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
        fillColor: Colors.grey.shade900,
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

  Padding _browseByCategory() {
    return Padding(
      padding: EdgeInsets.all(1.h),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black,
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
                        color: Colors.white,
                        fontSize: 18.sp,
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
                  Container(
                    child: TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Text(
                            "View More",
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            Icons.menu,
                            color: Colors.red,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
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
                          Image.asset(
                              GlobalVals.demoHomeGridValues[index].imageUrl),
                          SizedBox(
                            height: 1.h,
                          ),
                          Text(
                            GlobalVals.demoHomeGridValues[index].name,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black54),
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

  Padding _latestAds() {
    return Padding(
      padding: EdgeInsets.all(1.h),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black,
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
                        color: Colors.white,
                        fontSize: 18.sp,
                      ),
                      children: [
                        TextSpan(text: "Latest"),
                        TextSpan(
                          text: " Ads",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Text(
                            "View More",
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            Icons.menu,
                            color: Colors.red,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: 0.57),
                itemCount: GlobalVals.demoProductListing.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(0.6.h),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade800,
                        borderRadius: BorderRadius.circular(1.h),
                      ),
                      child: InkWell(
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity,
                              height: 16.h,
                              child: Stack(
                                children: [
                                  Positioned(
                                    top: 0,
                                    bottom: 0,
                                    left: 0,
                                    right: 0,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(
                                          1.h,
                                        ),
                                        topRight: Radius.circular(
                                          1.h,
                                        ),
                                      ),
                                      child: Container(
                                        color: Colors.white,
                                        child: Image.asset(
                                          GlobalVals.demoProductListing[index]
                                              .imageUrl,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    right: 0,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.grey.shade400,
                                        borderRadius:
                                            BorderRadius.circular(0.5.h),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(0.2.h),
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.photo_camera_outlined,
                                              color: Colors.grey.shade600,
                                              size: 2.h,
                                            ),
                                            Text(
                                              GlobalVals
                                                  .demoProductListing[index]
                                                  .imageItem
                                                  .toString(),
                                              style: TextStyle(
                                                color: Colors.grey.shade600,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              child: Padding(
                                padding: EdgeInsets.all(1.h),
                                child: Text(
                                  GlobalVals
                                      .demoProductListing[index].productTitle,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 1.h),
                              child: Container(
                                width: double.infinity,
                                child: Wrap(
                                  children: [
                                    Icon(
                                      Icons.query_builder,
                                      size: 2.h,
                                    ),
                                    SizedBox(
                                      width: 1.w,
                                    ),
                                    Text(
                                      GlobalVals.demoProductListing[index]
                                          .productDate,
                                      style: TextStyle(fontSize: 14.sp),
                                    ),
                                    Icon(
                                      Icons.folder_open_outlined,
                                      size: 2.h,
                                    ),
                                    SizedBox(
                                      width: 1.w,
                                    ),
                                    Text(
                                      GlobalVals.demoProductListing[index]
                                          .productDescription,
                                      style: TextStyle(fontSize: 14.sp),
                                    ),
                                    Icon(
                                      Icons.place_outlined,
                                      size: 2.h,
                                    ),
                                    SizedBox(
                                      width: 1.w,
                                    ),
                                    Text(
                                      GlobalVals
                                          .demoProductListing[index].location,
                                      style: TextStyle(fontSize: 14.sp),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 1.h, vertical: 1.6.h),
                              child: Container(
                                width: double.infinity,
                                child: Text(
                                  "₹" +
                                      GlobalVals
                                          .demoProductListing[index].price,
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                    fontSize: 17.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            IconButton(
                              splashColor: Colors.red,
                              onPressed: () {
                                print("Hi");
                              },
                              icon: Icon(Icons.favorite_border),
                            ),
                          ],
                        ),
                        onTap: () {
                          Get.toNamed(Routes.productDetailsScreen);
                        },
                      ),
                    ),
                  );
                },
              ),
              OutlinedButton(
                onPressed: () {},
                child: Text(
                  "View More",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding _chooseCityOrRegion() {
    return Padding(
      padding: EdgeInsets.all(1.h),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black,
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
                    color: Colors.white,
                  ),
                  Text(
                    "Choose a city or region",
                    style: TextStyle(
                        color: Colors.white,
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
}
