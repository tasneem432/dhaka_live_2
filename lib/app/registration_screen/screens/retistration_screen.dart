import 'package:dhaka_live/app/home_screen/screens/home_screen.dart';
import 'package:dhaka_live/app/login_screen/screens/login_screen.dart';
import 'package:dhaka_live/app/login_screen/widgets/login_action_btn.dart';
import 'package:dhaka_live/app/login_screen/widgets/login_text.dart';
import 'package:dhaka_live/app/main_screen/screens/main_screen.dart';
import 'package:dhaka_live/app/registration_screen/controllers/google_signin.dart';
import 'package:dhaka_live/app/registration_screen/widgets/register_google.dart';
import 'package:dhaka_live/app/registration_screen/widgets/registration_new_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../../general/utils/colors.dart';
import '../../login_screen/widgets/login_textfield.dart';

class RegistrationScreen extends StatelessWidget {
  static const pageRoute = "/registration-screen";
  CustomGoogleSignIn customGoogleSignIn = CustomGoogleSignIn();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 150.h,
          ),
          Image.asset(
            "assets/icons/logo_ass.png",
            width: 235.w,
            height: 30.h,
          ),
          SizedBox(
            height: 30.h,
          ),
          Container(
            margin: EdgeInsets.only(left: 30.w, right: 30.w),
            height: 221.h,
            width: 330.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LoginText(textt: "আপনার নাম "),
                SizedBox(
                  height: 5.h,
                ),
                LoginTextField(
                  hintTexx: "মোঃ কৌশিক আহমেদ ",
                ),

                //////////////////////////////////////////////////
                SizedBox(
                  height: 9.h,
                ),
                LoginText(textt: "মোবাইল নম্বর"),
                SizedBox(
                  height: 5.h,
                ),
                LoginTextField(
                  hintTexx: "+৮৮ (০১৫) ০০০০-০০০০",
                ),
                SizedBox(
                  height: 9.h,
                ),
                LoginText(textt: "পাসওয়ার্ড"),
                SizedBox(
                  height: 5.h,
                ),
                LoginTextField(
                  hintTexx: "*************",
                ),
              ],
            ),
          ),
          SizedBox(
            height: 18.h,
          ),
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, MainScreen .pageRoute);
            },
            child: LoginActionButton(btnText: "অ্যাকাউন্ট করুন")),
          SizedBox(
            height: 20.h,
          ),
          Text(
            "আথবা",
            style: TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.w400,
                color: AppColors.secondaryTextColor,
                fontFamily: "hindu"),
          ),
          SizedBox(
            height: 20.h,
          ),
          GestureDetector(
            onTap: (){
              customGoogleSignIn.signInWithGoogle(context);
            },
            child: RegistrationGoogle(
              imageUrl: "assets/icons/google.png",
              btnTextt: "গুগল দিয়ে লগইন করুন",
            
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          RegistrationGoogle(
            btnTextt: "ফেসবুক দিয়ে লগইন করুন",
            imageUrl: "assets/icons/Facebook.png",
          ),

          SizedBox(height: 150.h,),
          RegistrationNewText(
            firstText: "অ্যাকাউন্ট আছে ? ", 
            secondText: " লগইন করুন",
            routeNamee: LoginScreen.pageRoute,
            ),
          SizedBox(height: 50.h,),
          
        ],
      ),
    );
  }
}