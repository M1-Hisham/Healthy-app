// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:healthy/constants/colors.dart';
import 'package:healthy/constants/font_size.dart';
import 'package:healthy/constants/widget/El_button.dart';

import 'package:healthy/screens/signup_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(29),
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage('assets/images/Healthy-login.png'),
                  ),
                  Text(
                    "1000 + Healthy recipes waiting for you",
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: green,
                    ),
                  ),
                  //height 70
                  SizedBox(
                    height: 70,
                  ),
                  //sign up button
                  ElButton(
                    name: 'Sign up',
                    color: green,
                    textcolor: white,
                    fontSize: h1,
                    FontWeight: w700,
                    onPressed: SignupScreen(),
                  ),
                  SizedBox(
                    height: 38,
                  ),
                  ElButtonIcon(
                    titel: 'Continue with google',
                    icon: 'googel.png',
                    action: LoginScreen(),
                    sideColor: green,
                    color: white,
                  ),
                  SizedBox(
                    height: 19,
                  ),
                  ElButtonIcon(
                    titel: 'Continue with apple',
                    icon: 'iphone.png',
                    action: LoginScreen(),
                    sideColor: green,
                    color: white,
                  ),
                  SizedBox(
                    height: 19,
                  ),
                  ElButtonIcon(
                    titel: 'Continue with facebook',
                    icon: 'facebook.png',
                    action: LoginScreen(),
                    sideColor: green,
                    color: white,
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text(
                      "Already have an account ?",
                      style: TextStyle(
                        fontFamily: "Inter",
                        fontSize: h2,
                        fontWeight: w600,
                        color: black,
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Sign in',
                        style: TextStyle(
                          fontFamily: "Inter",
                          fontSize: h2,
                          fontWeight: w600,
                          color: green,
                        ),
                      ),
                    ),
                  ]),
                  // ActionButtonicon(
                  //   color: white,
                  //   titel: 'dk',
                  //   icon: Icons.abc,
                  //   action: () =>
                  //       navPush(context: context, screen: const SignupScreen()),
                  // ),
                ]),
          ),
        ),
      ),
    );
  }
}
