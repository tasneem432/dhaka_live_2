import 'package:dhaka_live/general/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScrollItem extends StatelessWidget {
  const HomeScrollItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRect(
          child: Image.asset("assets/images/scroll1.png"),
        ),
        ClipRect(
          child: Image.asset("assets/images/scroll2.png"),
        ),
        Container(
          padding: EdgeInsets.only(left: 10.w,bottom: 10.h,top: 10.h,right: 10.w),
          width: 154.w,
          height: 219.h,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 17.h,
                padding: EdgeInsets.only(left: 10.w,right: 10.w,top: 2.h,bottom: 2.h),
                decoration: BoxDecoration(
                  color: AppColors.whiteColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Text("জাতীয়",style: TextStyle(
                  fontSize: 9.sp,
                  fontWeight: FontWeight.w300,
                  fontFamily: "hindu",
                  color: AppColors.whiteColor
                ),),
              ),
              SizedBox(height: 10.h,),
              Text("ফেরি চলাচলের নতুন নিয়ম শিমুলিয়া-বাংলাবাজার রুটে",style: TextStyle(
                fontSize: 11.sp,
                fontWeight: FontWeight.w400,
                fontFamily: "hindu",
                color: AppColors.whiteColor
              ),)

            ],
          ),
        ),
      ],
    );
    
  }
}
