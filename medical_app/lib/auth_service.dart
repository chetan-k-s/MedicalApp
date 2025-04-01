import 'package:firebase_auth/firebase_auth.dart';
//import 'package:flutter/material.dart';
//import 'package:medical_app/navigation_bar.dart';

class AuthService {
  final _auth = FirebaseAuth.instance;

  // Future<User?> createUserWithEmailAndPassword(BuildContext context,TextEditingController emailController, TextEditingController passwordController) async {
  //   try {
  //     final cred = await FirebaseAuth.instance.createUserWithEmailAndPassword(
  //       email: emailController.text.trim(),
  //       password: passwordController.text.trim(),
  //     );
  //     Navigator.pushAndRemoveUntil(context, NavBar.route(), (route) => false);
  //     return cred.user;

  //   } catch (e) {
  //     // Handle error
  //   }
  //   return null;
  // }

  // Future<User?> signInWithEmailAndPassword(TextEditingController emailController, TextEditingController passwordController) async {
  //   try {
  //     final cred = await FirebaseAuth.instance.signInWithEmailAndPassword(
  //       email: emailController.text.trim(),
  //       password: passwordController.text.trim(),
  //     );
  //     return cred.user;
  //     // Navigate to another screen after successful sign-up if needed
  //   } catch (e) {
  //     // Handle error
  //   }
  //   return null;
  // }

  void handleGoogleSignIn() async{
    try{
      GoogleAuthProvider googleProvider = GoogleAuthProvider();
      _auth.signInWithProvider(googleProvider);
    }
    catch(e){//
    }
  }
  signInWithPhoneNumber(String text) {}
}