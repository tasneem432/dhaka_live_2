import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../general/utils/colors.dart';

class HomeScreenAds extends StatelessWidget {
  const HomeScreenAds({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15.w),
      child: Stack(
        children: [
          Image.asset(
            "assets/images/home_add.png",
            width: 358.w,
            height: 100.h,
            fit: BoxFit.fill,
          ),
          SizedBox(
            width: 358.w,
            height: 100.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "নিত্যনতুন লাইভ আপডেট জানতে ঢাকালাইভ নিউজের \nসাথেই থাকুন ",
                  style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w300,
                      color: AppColors.whiteColor,
                      fontFamily: "hindu"),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20.h,
                ),
                Image.asset(
                  "assets/icons/logo_white.png",
                  width: 94.w,
                  height: 12.h,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
