import 'package:dhaka_live/app/login_screen/widgets/login_action_btn.dart';
import 'package:dhaka_live/app/login_screen/widgets/login_text.dart';
import 'package:dhaka_live/app/login_screen/widgets/login_textfield.dart';
import 'package:dhaka_live/app/main_screen/screens/main_screen.dart';
import 'package:dhaka_live/app/registration_screen/screens/retistration_screen.dart';
import 'package:dhaka_live/general/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  static const pageRoute = "/login-screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 178.h,
            ),
            Image.asset(
              "assets/icons/logo_ass.png",
              width: 235.w,
              height: 30.h,
            ),
      
            SizedBox(height: 100.h,),
            Container(
              margin: EdgeInsets.only(left: 30.w, right: 30.w),
              width: 330.w,
              height: 206.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LoginText(textt: "মোবাইল নম্বর"),
                  SizedBox(height: 5.h,),
                   LoginTextField(
                    hintTexx: "+৮৮ (০১৫) ০০০০-০০০০",
                   ),
      
                  SizedBox(height: 10.h,),
                  LoginText(textt: "পাসওয়ার্ড"),
                  SizedBox(height: 5.h,),
                 LoginTextField(
                  hintTexx: "*************",
                 ),
                 SizedBox(height: 18.h,),
                 GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, MainScreen.pageRoute);
                  },
                  child: LoginActionButton(btnText: "লগইন করুন"))
                
                ],
              ),
            ),
      
            SizedBox(height: 20.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("পাসওয়ার্ড ভুলে গেছেন ? ",style: TextStyle(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w300,
                  color: AppColors.secondaryTextColor,
                  fontFamily: "hindu",
                ),),
      
                Text("  নতুন পাসওয়ার্ড দিন",style: TextStyle(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.primaryBrandColor,
                  fontFamily: "hindu",
                ),),
              ],
            ),
            SizedBox(height: 200.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("অ্যাকাউন্ট না থাকলে ? ",style: TextStyle(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w300,
                  color: AppColors.secondaryTextColor,
                  fontFamily: "hindu",
                ),),
      
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, RegistrationScreen.pageRoute);
                  },
                  child: Text(" নতুন অ্যাকাউন্ট করুন",style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.primaryBrandColor,
                    fontFamily: "hindu",
                  ),),
                ),
              ],
            ),
      
            
          ],
        ),
      ),
    );
  }
}
