import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../general/utils/colors.dart';

class LoginTextField extends StatelessWidget {
  String hintTexx;
  LoginTextField({
    required this.hintTexx
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330.w,
      height: 42.h,
      decoration: BoxDecoration(
        //color: AppColors.logintTextfieldBgColor.withOpacity(0.6),
        color: AppColors.loginTfBg,
        borderRadius: BorderRadius.circular(5.r),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintTexx,
          contentPadding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 0.0),
          hintStyle: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w300,
            color: AppColors.loginTextColor.withOpacity(0.5),
            fontFamily: 'hindu',
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(width: 1.0, color: AppColors.logintTextfieldBorder),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1.0, color: AppColors.logintTextfieldBorder),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1.0, color: AppColors.logintTextfieldBorder),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1.0, color: AppColors.logintTextfieldBorder),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1.0, color: AppColors.logintTextfieldBorder),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1.0, color: AppColors.logintTextfieldBorder),
          ),
         
         suffix: Image.asset("assets/icons/help.png",width: 16.w,height: 16.h,),
         
         
         
         
        ),
      ),
    );
  }
}
