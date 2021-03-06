import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kishan_vikas/global/global_vals.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: //_noData(),
          _listItems(),
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
                                Icons.favorite,
                                color: Colors.red,
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
                          "??? ${GlobalVals.demoProductListing[index].price}",
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

  Column _noData() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          "assets/wish_list.svg",
          height: 30.h,
          width: 65.w,
        ),
        SizedBox(
          height: 5.h,
        ),
        Text(
          "No Wishlist Added",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.sp,
          ),
        ),
      ],
    );
  }
}
