import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../general/utils/colors.dart';

class ProfileEditSection extends StatelessWidget {
  const ProfileEditSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(
          "assets/icons/profile.png",
          width: 60.w,
          height: 60.h,
        ),
        SizedBox(
          width: 10.w,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "কৌশিক আহমেদ",
              style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.primaryTextColor,
                  fontFamily: "hindu"),
            ),
            Text(
              "০১৫ ০০০ ০০০ ০০০",
              style: TextStyle(
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w300,
                  fontFamily: "hindu",
                  color: AppColors.secondaryTextColor),
            ),
          ],
        ),
        Expanded(child: SizedBox()),
        Container(
          width: 77.w,
          height: 34.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              border: Border.all(
                color: AppColors.secondaryTextColor,
                width: 1.w,
              )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/icons/edit.png",
                width: 20.w,
                height: 20.h,
              ),
              Text(
                "এডিট",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  fontFamily: "hindu",
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
