import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../general/utils/colors.dart';

class RegistrationNewText extends StatelessWidget {
  String firstText;
  String secondText;
  String routeNamee;

  RegistrationNewText({
    required this.firstText,
    required this.secondText,
    required this.routeNamee
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          firstText,
          style: TextStyle(
            fontSize: 13.sp,
            fontWeight: FontWeight.w300,
            color: AppColors.secondaryTextColor,
            fontFamily: "hindu",
          ),
        ),
        GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, routeNamee);
          },
          child: Text(
            secondText,
            style: TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.w400,
              color: AppColors.primaryBrandColor,
              fontFamily: "hindu",
            ),
          ),
        ),
      ],
    );
  }
}
