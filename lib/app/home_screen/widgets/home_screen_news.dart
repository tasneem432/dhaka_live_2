import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../general/utils/colors.dart';

class HomeScreenNews extends StatelessWidget {
  const HomeScreenNews({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 358.w,
      height: 255.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5.r),
            child: Image.asset(
              "assets/images/news1.png",
              width: 358.w,
              height: 160.h,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            width: 44.w,
            height: 17.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: AppColors.secondaryTextColor.withOpacity(0.1),
            ),
            child: Center(
              child: Text(
                "জাতীয়",
                style: TextStyle(
                    fontSize: 9.sp,
                    fontWeight: FontWeight.w300,
                    color: AppColors.secondaryTextColor,
                    fontFamily: "hindu"),
              ),
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            "বন্যার্তদের দিন কাটছে না খেয়ে",
            style: TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.w400,
              fontFamily: "hindu",
              color: AppColors.primaryTextColor,
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            "দেশের সার্বিক বন্যা পরিস্থিতির আরও অবনতি হয়েছে। উত্তরের সব নদনদীর পানি বাড়ছে।",
            style: TextStyle(
                fontSize: 11.sp,
                fontWeight: FontWeight.w300,
                fontFamily: "hindu",
                color: AppColors.blackColor),
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            "৪০ মিনিট আগে",
            style: TextStyle(
                fontSize: 9.sp,
                fontWeight: FontWeight.w300,
                fontFamily: "hindu",
                color: AppColors.secondaryTextColor),
          ),
        ],
      ),
    );
  }
}
