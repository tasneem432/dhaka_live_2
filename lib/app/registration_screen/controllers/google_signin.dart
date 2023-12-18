import 'package:dhaka_live/app/main_screen/screens/main_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class CustomGoogleSignIn{

   signIn(email, pass, context) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: pass,
      );
      var authCredential = credential.user;
      if (authCredential!.uid.isNotEmpty) {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => MainScreen()));
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }



  
   signOut() async {
    var result = await FirebaseAuth.instance.signOut();
    return result;
  }








    signInWithGoogle(context) async {
    try {
      // Trigger the authentication flow
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      // Obtain the auth details from the request
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;
      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithCredential(credential);
      var user = userCredential.user;

      if (user!.uid.isNotEmpty) {
        print('success');
        print(user.displayName);
        print(user.email);
        print(user.uid);
        print(user.phoneNumber);
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => MainScreen()));
      }
    } catch (e) {
      print('failed');
    }
  }



}