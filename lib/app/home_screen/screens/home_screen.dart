import 'package:dhaka_live/app/home_screen/widgets/home_divider.dart';
import 'package:dhaka_live/app/home_screen/widgets/home_news_desctiption.dart';
import 'package:dhaka_live/app/home_screen/widgets/home_screen_ads.dart';
import 'package:dhaka_live/app/home_screen/widgets/home_screen_news.dart';
import 'package:dhaka_live/app/home_screen/widgets/home_scroll_item.dart';
import 'package:dhaka_live/app/search_screen/widgets/search_listview_item.dart';
import 'package:dhaka_live/general/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../category_screen/widgets/category_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const pageRoute = "/home-screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CategoryAppBar(),
            Image.asset(
              "assets/images/img.png",
              width: 390.w,
              height: 200.h,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 22.w),
              child: HomeNewsDesctiption(),
            ),
            Padding(
              padding: EdgeInsets.only(left: 22.w, right: 22.w),
              child: Divider(
                color: AppColors.secondaryTextColor.withOpacity(0.1),
              ),
            ),
            SearchScreenItem(),
            Padding(
              padding: EdgeInsets.only(left: 22.w, right: 22.w),
              child: Divider(
                color: AppColors.secondaryTextColor.withOpacity(0.1),
              ),
            ),
            SearchScreenItem(),
            Padding(
              padding: EdgeInsets.only(left: 22.w, right: 22.w),
              child: Divider(
                color: AppColors.secondaryTextColor.withOpacity(0.1),
              ),
            ),
            SearchScreenItem(),

            SizedBox(height: 10.h,),
            HomeScreenAds(),
            SizedBox(height: 5.h,),
            homeDivider(),
            SizedBox(height: 5.h,),

            Padding(
              padding: EdgeInsets.only(left: 16.w),
              child: HomeScreenNews(),
            ),
            SizedBox(height: 10.h,),
            Padding(
              padding: EdgeInsets.only(left: 16.w),
              child: HomeScreenNews(),
            ),
            SizedBox(height: 5.h,),
            homeDivider(),
            SizedBox(height: 10.h,),
            Padding(
              padding: EdgeInsets.only(left: 15.w),
              child: Text("স্পটলাইট",style: TextStyle(
                fontSize: 17.sp,
                fontFamily: "hindu",
                color: AppColors.primaryTextColor,
                fontWeight: FontWeight.w400
              ),),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding:  EdgeInsets.only(left: 15.w),
              child: SizedBox(
                height: 219.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index){
                    return HomeScrollItem();
                  }
                  ),
              ),
            ),

            SizedBox(height: 10.h,),

          ],
        ),
      ),
    );
  }
}
