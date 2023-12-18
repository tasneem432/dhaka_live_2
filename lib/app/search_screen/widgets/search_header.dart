import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../general/utils/colors.dart';

class SearchHeader extends StatelessWidget {
  const SearchHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390.w,
      height: 94.h,
      decoration: BoxDecoration(
        color: AppColors.secondaryTextColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 45.h,
          ),
          Container(
            width: 330.w,
            height: 42.h,
            decoration: BoxDecoration(
              //color: AppColors.logintTextfieldBgColor.withOpacity(0.6),
              color: AppColors.loginTfBg,
              borderRadius: BorderRadius.circular(5.r),
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: "খেলা",
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 12.0, vertical: 0.0),
                hintStyle: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w300,
                  color: AppColors.loginTextColor.withOpacity(0.5),
                  fontFamily: 'hindu',
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 1.0, color: AppColors.logintTextfieldBorder),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 1.0, color: AppColors.logintTextfieldBorder),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 1.0, color: AppColors.logintTextfieldBorder),
                ),
                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 1.0, color: AppColors.logintTextfieldBorder),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 1.0, color: AppColors.logintTextfieldBorder),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 1.0, color: AppColors.logintTextfieldBorder),
                ),
                suffixIcon: Icon(Icons.search, size: 24.h,color: AppColors.secondaryTextColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
