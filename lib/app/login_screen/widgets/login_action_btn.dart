import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../general/utils/colors.dart';

class LoginActionButton extends StatelessWidget {
  String btnText;
  LoginActionButton({
    required this.btnText
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330.w,
      height: 42.h,
      decoration: BoxDecoration(
        color: AppColors.primaryBrandColor,
        borderRadius: BorderRadius.circular(5.r),
      ),
      child: Center(
          child: Text(
        btnText,
        style: TextStyle(
          fontSize: 15.sp,
          fontWeight: FontWeight.w400,
          color: AppColors.whiteColor,
        ),
      )),
    );
  }
}
