import 'package:dhaka_live/app/category_screen/widgets/category_appbar.dart';
import 'package:dhaka_live/app/profile_screen/widgets/profil_edit_section.dart';
import 'package:dhaka_live/app/profile_screen/widgets/profile_items.dart';
import 'package:dhaka_live/general/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  static const pageRoute = "/profile-screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CategoryAppBar(),
          SizedBox(height: 20.h,),
          Padding(
            padding: EdgeInsets.only(left: 20.w,right: 20.w),
            child: ProfileEditSection(),
          ),
          SizedBox(height: 20.h,),
          Padding(
            padding: EdgeInsets.only(left: 22.w),
            child: SizedBox(
              width: 347.w,
              height: 273.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProfileItem(textt: "সাইট ম্যাপ"),
                  Divider(
                    color: AppColors.secondaryTextColor.withOpacity(0.1),
                    thickness: 1,
                  ),

                  ProfileItem(textt: "ভাষা"),
                  Divider(
                    color: AppColors.secondaryTextColor.withOpacity(0.1),
                    thickness: 1,
                  ),

                  ProfileItem(textt: "অ্যাপ সেটিং"),
                  Divider(
                    color: AppColors.secondaryTextColor.withOpacity(0.1),
                    thickness: 1,
                  ),

                  ProfileItem(textt: "গোপনীয়তা"),
                  Divider(
                    color: AppColors.secondaryTextColor.withOpacity(0.1),
                    thickness: 1,
                  ),

                  ProfileItem(textt: "সর্তসমূহ"),
                  Divider(
                    color: AppColors.secondaryTextColor.withOpacity(0.1),
                    thickness: 1,
                  ),

                  ProfileItem(textt: "যোগাযোগ"),
                  Divider(
                    color: AppColors.secondaryTextColor.withOpacity(0.1),
                    thickness: 1,
                  ),

                  ProfileItem(textt: "আমাদের সম্পর্কে"),
                  
                ],
              ),
            ),
          ),

          SizedBox(height: 20.h,),
          Container(
            width: 347.w,
            height: 43.h,
            margin: EdgeInsets.only(left: 22.w),
            decoration: BoxDecoration(
              color: AppColors.primaryBrandColor,
              borderRadius: BorderRadius.circular(5.r),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.logout,size: 12.5.w,color: AppColors.whiteColor,),
                SizedBox(width: 5.w,),
                Text("লগ আউট ",style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: AppColors.whiteColor,
                  fontSize: 14.sp,
                  fontFamily: "hindu"
                ),),
                
            ]),
          ),
          SizedBox(height: 30.h,),
          Padding(padding: EdgeInsets.only(left: 22.w),child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset('assets/icons/Facebook.png',width: 24.w,height: 24.h,),
              SizedBox(width: 5.w,),
              Image.asset('assets/icons/telegram.png',width: 24.w,height: 24.h,),
              SizedBox(width: 5.w,),
              Image.asset('assets/icons/twitter.png',width: 24.w,height: 24.h,),
              SizedBox(width: 5.w,),
              Image.asset('assets/icons/linkedin.png',width: 24.w,height: 24.h,),
              SizedBox(width: 5.w,),
              Image.asset('assets/icons/instagram.png',width: 24.w,height: 24.h,),

            ],
          ),),
          Expanded(child: SizedBox()),
          SizedBox(height: 10.h,),
            Image.asset(
              "assets/icons/add.png",
              width: 390.w,
              height: 60.h,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 10.h,
            )

          
        ],
      ),
    );
  }
}

