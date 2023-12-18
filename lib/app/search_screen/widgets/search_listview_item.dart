import 'package:dhaka_live/general/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchScreenItem extends StatelessWidget {
  const SearchScreenItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.only(bottom: 10.h,left: 15.w,right: 15.w),
     // width: 360.w,
      height: 90,
      padding: EdgeInsets.only(left: 15.w,right: 15.w,bottom: 10.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.r)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.r)
            ),
            child: Image.asset("assets/images/mbappe.png",width: 130.w,height: 90.h,)),
            SizedBox(width: 10.w,),
            SizedBox(
              width: 220.w,
              height: 82.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 51.w,
                    height: 17.h,
                    decoration: BoxDecoration(
                      color: AppColors.primaryBrandColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Center(
                      child: Text("খেলাধুলা",style: TextStyle(
                        fontSize: 9.sp,
                        fontWeight: FontWeight.w300,
                        color: AppColors.blackColor,
                        fontFamily: "hindu",
                      ),),
                    ),
                  ),
                  SizedBox(height: 4.h,),
                  Text("এমবাপ্পের কড়া জবাবের পর ভুল স্বীকার ফ্রান্সের ফুটবল-প্রধানের",style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15.sp,
                    fontFamily: "hindu",
                    color: AppColors.primaryTextColor,
                  ),),

                  SizedBox(height: 4.h,),
                  Text("১০ মিনিট আগে",style: TextStyle(
                    fontSize: 9.sp,
                    fontWeight: FontWeight.w300,
                    fontFamily: "hindu",
                    color: AppColors.secondaryTextColor,
                  ),),
                ],
              ),
            )
        ],
      ),
    );
  }
}

