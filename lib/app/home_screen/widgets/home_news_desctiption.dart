import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../general/utils/colors.dart';

class HomeNewsDesctiption extends StatelessWidget {
  const HomeNewsDesctiption({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 361.w,
      height: 124.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(right: 10.w),
                height: 17.h,
                width: 64.w,
                decoration: BoxDecoration(
                  color: AppColors.primaryBrandColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Center(
                  child: Text(
                    "ব্রেকিং নিউজ",
                    style: TextStyle(
                        fontSize: 9.sp,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'hindu',
                        color: AppColors.primaryBrandColor),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 10.w),
                height: 17.h,
                width: 44.w,
                decoration: BoxDecoration(
                  color: AppColors.secondaryTextColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Center(
                  child: Text(
                    "জাতীয়",
                    style: TextStyle(
                        fontSize: 9.sp,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'hindu',
                        color: AppColors.secondaryTextColor),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            "স্বপ্নের পদ্মা সেতুর উদ্বোধন ২৫ জুন",
            style: TextStyle(
                fontSize: 17.sp,
                fontWeight: FontWeight.w400,
                fontFamily: "hindu",
                color: AppColors.primaryTextColor),
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            "স্বপ্নের পদ্মা সেতু ২৫ জুন উদ্বোধন করা হবে। এদিন সকাল ১০টায় প্রধানমন্ত্রী শেখ হাসিনা সেতুর উদ্বোধন করবেন।স্বপ্নের পদ্মা সেতু ২৫ জুন উদ্বোধন করা হবে। এদিন সকাল ১০টায় প্রধানমন্ত্রী শেখ হাসিনা সেতুর উদ্বোধন করবেন।",
            style: TextStyle(
                fontSize: 11.sp,
                fontWeight: FontWeight.w300,
                color: AppColors.blackColor,
                fontFamily: "hindu"),
          ),
          SizedBox(
            height: 6.h,
          ),
          Text(
            "১০ মিনিট আগে",
            style: TextStyle(
                fontFamily: "hindu",
                fontSize: 9.sp,
                fontWeight: FontWeight.w300,
                color: AppColors.secondaryTextColor),
          ),
        ],
      ),
    );
  }
}
