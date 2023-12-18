import 'package:country_code_picker/country_code_picker.dart';
import 'package:dhaka_live/app/login_screen/widgets/login_action_btn.dart';
import 'package:dhaka_live/app/login_screen/widgets/login_text.dart';
import 'package:dhaka_live/app/login_screen/widgets/login_textfield.dart';
import 'package:dhaka_live/app/main_screen/screens/main_screen.dart';
import 'package:dhaka_live/app/registration_screen/screens/retistration_screen.dart';
import 'package:dhaka_live/general/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../controllers/custom_phone_auth.dart';

class PhoneAuth extends StatefulWidget {
  const PhoneAuth({super.key});
  static const pageRoute = "/phone-auth-screen";
  

  @override
  State<PhoneAuth> createState() => _PhoneAuthState();
}

class _PhoneAuthState extends State<PhoneAuth> {

  TextEditingController _phoneAuthController = TextEditingController();
  CustomPhoneAuth _customPhoneAuth = CustomPhoneAuth();
  String countryCode = "+1";



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
            Text("Phne auth"),
            SizedBox(height: 10.h,),
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
                  //  Row(
                  //    children: [
                  //     Expanded(
                  //       flex: 2,
                  //       child: CountryCodePicker(
                  //         onChanged: (val){
                  //           countryCode = val.toString();
                  //           print(countryCode);
                  //         },
                  //       )),
                  //      Expanded(
                  //       flex: 4,
                  //        child: LoginTextField(
                  //         hintTexx: "+৮৮ (০১৫) ০০০০-০০০০",
                  //        ),
                  //      ),
                  //    ],
                  //  ),

                  Row(
                children: [
                  CountryCodePicker(
                    onChanged: (val) {
                      countryCode = val.toString();
                      print(countryCode);
                    },
                    textStyle: TextStyle(
                      fontSize: 12,
                    ),
                    initialSelection: 'Us',
                    favorite: ['+39', 'US'],
                    showCountryOnly: false,
                    showOnlyCountryWhenClosed: false,
                    alignLeft: false,
                  ),
                  Expanded(
                    child: TextFormField(
                      controller: _phoneAuthController,
                      decoration: InputDecoration(
                        hintText: 'phone number',
                      ),
                    ),
                  ),
                ],
              ),
      
                  SizedBox(height: 10.h,),
                  
                 
                 SizedBox(height: 18.h,),
                 GestureDetector(
                  onTap: (){
                    var number = countryCode + _phoneAuthController.text.trim();
                    print(number);
                    _customPhoneAuth.phoneAuth(number, context);
                  },
                  child: LoginActionButton(btnText: "Get Otp"))
                
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
