import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../general/utils/colors.dart';

class ProfileItem extends StatelessWidget {
  String textt;
  ProfileItem({
    required this.textt
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          textt,
          style: TextStyle(
            fontSize: 13.sp,
            fontWeight: FontWeight.w300,
            fontFamily: "hindu",
            color: AppColors.secondaryTextColor,
          ),
        ),
        Image.asset(
          "assets/icons/arrow1.png",
          width: 18.w,
          height: 18.h,
        ),
      ],
    );
  }
}
