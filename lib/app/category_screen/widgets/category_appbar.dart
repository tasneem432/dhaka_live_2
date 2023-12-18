import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../general/utils/colors.dart';

class CategoryAppBar extends StatelessWidget {
  const CategoryAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
            width: 390.w,
            height: 94.h,
            padding: EdgeInsets.only(left: 20.w,right: 20.w),
            decoration: BoxDecoration(
             color: AppColors.secondaryTextColor,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/icons/logo_white.png",width: 156.w,height: 20.h,),
                    Image.asset("assets/icons/bell.png",width: 24.w,height: 24.h,),
                  ],
                ),
                SizedBox(height: 10.h,),
              ],
            ),
          );
  }
}

