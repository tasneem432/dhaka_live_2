import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../general/utils/colors.dart';

class RegistrationGoogle extends StatelessWidget {
  String imageUrl;
  String btnTextt;

  RegistrationGoogle({
    super.key, 
    required this.imageUrl,
    required this.btnTextt,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
            width: 330.w,
            height: 43.h,
            padding: EdgeInsets.only(left: 1.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.r),
              color: AppColors.loginGoogle,

              gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color(0xFF18A9FD), // Use the hex value for #18A9FD
            Color(0xFF046BE3), // Use the hex value for #046BE3
          ],
          stops: [0.1303, 0.9621], // Set the percentage stops
        ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 43.w,
                  height: 41.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.r),
                      color: AppColors.whiteColor
                      ),
                  child: Center(
                    child: Image.asset(
                      imageUrl,
                      width: 24.w,
                      height: 24.h,
                    ),
                  ),
                ),
                Text(
                  btnTextt,
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontFamily: "hindu",
                      color: AppColors.whiteColor,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(),
              ],
            ),
          );
  }
}
