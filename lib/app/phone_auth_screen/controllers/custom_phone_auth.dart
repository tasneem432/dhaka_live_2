import 'package:dhaka_live/app/main_screen/screens/main_screen.dart';
import 'package:dhaka_live/general/utils/colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

class CustomPhoneAuth {
  Future phoneAuth( String phoneNumber, context) async {
    final TextEditingController _otpController = TextEditingController();
    FirebaseAuth auth = FirebaseAuth.instance;
    
    String platformm = "1";

    if (platformm == "3") {
      try {
        ConfirmationResult confirmationResult =
            await auth.signInWithPhoneNumber(phoneNumber);
        showDialog(
            context: context,
            builder: (_) {
              return Dialog(
                child: SafeArea(
                  child: Container(
                    height: 400,
                    width: MediaQuery.sizeOf(context).width /2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        PinCodeTextField(
                          autofocus: true,
                          controller: _otpController,
                          hideCharacter: true,
                          highlight: true,
                          highlightColor: AppColors.primaryBrandColor,
                          defaultBorderColor: AppColors.primaryTextColor,
                          maxLength: 6,
                          pinBoxBorderWidth: 35,
                          pinBoxHeight: 35,
                          pinBoxRadius: 10,
                          hasUnderline: true,
                          wrapAlignment: WrapAlignment.spaceAround,
                          

                        ),
                        ElevatedButton(onPressed: () async {
                          try{
                            UserCredential userCredential = await confirmationResult.confirm(
                              _otpController.text,);
                              if(userCredential.user != null){
                                print('success');
                                Navigator.pushNamed(context, MainScreen.pageRoute);
                              }
                              else{
                                print("ailed");
                                Navigator.pop(context);
                              }
                          }catch(e){
                            print("Failed! Try Again");
                            Navigator.pop(context);
                          }

                        }, child: Text("Continue")),
                      ],
                    ),
                  ),
                ),
              );
            });
      } catch (e) {}
    }else {
      try {
        await auth.verifyPhoneNumber(
          phoneNumber: phoneNumber,
          verificationCompleted: (PhoneAuthCredential credential) async {
            var result = await auth.signInWithCredential(credential);
            User? user = result.user;
            if (user!.uid.isNotEmpty) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => MainScreen()));
            }
          },
          verificationFailed: (FirebaseAuthException e) async {
            if (e.code == 'invalid-phone-number') {
              print("The provided phone number is not valid.");
            }
          },
          codeSent: (String verificationId, int? resendToken) async {
            return showDialog(
                context: context,
                builder: (_) {
                  return Dialog(
                    child: SafeArea(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Container(
                          height: 250,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              PinCodeTextField(
                                autofocus: true,
                                controller: _otpController,
                                hideCharacter: true,
                                highlight: true,
                                highlightColor: Colors.purple,
                                defaultBorderColor: Colors.blue,
                                hasTextBorderColor:
                                    Color.fromARGB(0, 55, 201, 22),
                                highlightPinBoxColor: Colors.transparent,
                                maxLength: 6,
                                pinBoxWidth: 35,
                                pinBoxHeight: 45,
                                pinBoxRadius: 10,
                                hasUnderline: true,
                                wrapAlignment: WrapAlignment.spaceAround,
                                pinBoxDecoration: ProvidedPinBoxDecoration
                                    .defaultPinBoxDecoration,
                                pinTextStyle: TextStyle(fontSize: 22.0),
                                pinTextAnimatedSwitcherTransition:
                                    ProvidedPinBoxTextAnimation
                                        .scalingTransition,
//                    pinBoxColor: Colors.green[100],
                                pinTextAnimatedSwitcherDuration:
                                    Duration(milliseconds: 300),
//                    highlightAnimation: true,
                                highlightAnimationBeginColor: Colors.black,
                                highlightAnimationEndColor: Colors.white12,
                                keyboardType: TextInputType.number,
                              ),
                              ElevatedButton(
                                onPressed: () async {
                                  try {
                                    PhoneAuthCredential _phoneCredential =
                                        PhoneAuthProvider.credential(
                                      verificationId: verificationId,
                                      smsCode: _otpController.text,
                                    );
                                    var result = await FirebaseAuth.instance
                                        .signInWithCredential(_phoneCredential);
                                    User? user = result.user;
                                    if (user != null) {
                                      print("Success");
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (_) =>
                                                  MainScreen()));
                                    } else {
                                      print("Failed");
                                      Navigator.pop(context);
                                    }
                                  } catch (e) {
                                    print("Failed! Try Again.");
                                    Navigator.pop(context);
                                  }
                                },
                                child: Text('Verify'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                });
          },
          codeAutoRetrievalTimeout: (String verificationId) async {},
          timeout: Duration(seconds: 60),
        );
      } catch (e) {
        print('Something is wrong');
      }
    }
  }
}
