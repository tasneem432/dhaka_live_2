import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../general/utils/colors.dart';

class LoginText extends StatelessWidget {
  String textt;
  LoginText({super.key, 
    required this.textt,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      textt,
      style: TextStyle(
          fontSize: 14.sp,
          fontFamily: "hindu",
          fontWeight: FontWeight.w400,
          color: AppColors.loginTextColor),
    );
  }
}
