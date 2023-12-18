import 'package:dhaka_live/app/category_screen/widgets/category_appbar.dart';
import 'package:dhaka_live/general/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});
  static const pageRoute = "/category-screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CategoryAppBar(),
            SizedBox(
              width: 390.w,
              height: 648.h,
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index){
                  return Container(
                    width: 358.w,
                    height: 60.h,
                    margin: EdgeInsets.only(bottom: 10.h,left: 16.w,right: 16.w),
                    decoration: BoxDecoration(
                      
                    color: AppColors.categoryitemBg,
                    borderRadius: BorderRadius.circular(5.r),
                    ),
                    child: Center(child: Text("আন্তর্জাতিক",style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.secondaryTextColor,
                      fontFamily: "hindu"
                    ),)),
                  );
                }
                ),
          
            ),
            SizedBox(height: 8.h,),
            Image.asset("assets/icons/add.png",width: 390.w,height: 60.h,fit: BoxFit.cover,),
            SizedBox(height: 8.h,)
            
            
          ],
        ),
      ),
    );
  }
}

