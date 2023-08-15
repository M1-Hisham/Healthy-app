import 'package:flutter/material.dart';
import 'package:healthy/constants/colors.dart';
import 'package:healthy/constants/widget/El_button.dart';
import 'package:healthy/screens/home_screen.dart';
import '../constants/font_size.dart';
import '../constants/widget/text_Field.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});
  static const routes = '/SignupScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Stack(alignment: Alignment.center, children: [
            Container(
              height: 230,
              width: double.infinity,
              decoration: BoxDecoration(
                color: green,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(185),
                    bottomRight: Radius.circular(185)),
              ),
            ),
            Text(
              "HEALTHY",
              style: TextStyle(
                fontFamily: "Inter",
                fontSize: 45,
                fontWeight: w700,
                color: white,
                height: 3,
              ),
            ),
          ]),
          Padding(
            padding: const EdgeInsets.all(29),
            child: Column(children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Sign up",
                  style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: h1,
                    fontWeight: w700,
                    color: Color(0xff1ec334),
                    height: 23 / 24,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(
                height: 36,
              ),
              TextsField(
                textInputType: TextInputType.name,
                text: 'Name',
              ),
              SizedBox(
                height: 20,
              ),
              TextsField(
                textInputType: TextInputType.emailAddress,
                text: 'E-mail',
              ),
              SizedBox(
                height: 20,
              ),
              TextsField(
                textInputType: TextInputType.visiblePassword,
                text: 'Password',
                pas: true,
              ),
              SizedBox(
                height: 36,
              ),
              ElButton(
                name: 'Sign up',
                color: green,
                textcolor: white,
                fontSize: h1,
                onPressed: HomeScreen(),
                FontWeight: w700,
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "by registration process, you accept our privacy policy",
                style: TextStyle(
                  fontFamily: "Inter",
                  fontSize: 14,
                  fontWeight: w500,
                  color: black,
                ),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 14),
                child: Row(children: [
                  Expanded(
                    child: Divider(
                      color: green,
                      indent: 20,
                      endIndent: 10,
                      thickness: 2,
                    ),
                  ),
                  Text(
                    'or',
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontSize: 18,
                      fontWeight: w700,
                      color: green,
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: green,
                      indent: 10,
                      endIndent: 20,
                      thickness: 2,
                    ),
                  ),
                ]),
              ),
              ElButtonIcon(
                titel: 'Continue with google',
                icon: 'googel.png',
                sideColor: green,
                color: white,
              ),
              SizedBox(
                height: 19,
              ),
              ElButtonIcon(
                titel: 'Continue with apple',
                icon: 'iphone.png',
                sideColor: green,
                color: white,
              ),
              SizedBox(
                height: 19,
              ),
              ElButtonIcon(
                titel: 'Continue with facebook',
                icon: 'facebook.png',
                sideColor: green,
                color: white,
              ),
            ]),
          )
        ]),
      ),
    );
  }
}
