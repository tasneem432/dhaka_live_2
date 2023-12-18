import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../general/utils/colors.dart';

homeDivider() {
  return Padding(
    padding: EdgeInsets.only(left: 22.w, right: 22.w),
    child: Divider(
      color: AppColors.secondaryTextColor.withOpacity(0.1),
    ),
  );
}
