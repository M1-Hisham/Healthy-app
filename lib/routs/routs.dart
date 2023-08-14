import 'package:flutter/material.dart';
import 'package:healthy/screens/addPicture_screen.dart';
import 'package:healthy/screens/home_screen.dart';
import 'package:healthy/screens/login_screen.dart';
import 'package:healthy/screens/menu_screen.dart';
import 'package:healthy/screens/profile_screen.dart';
import 'package:healthy/screens/signup_screen.dart';
import 'package:healthy/screens/user_screen.dart';
import '../screens/home2_screen.dart';

Map<String, WidgetBuilder> routes = {
  LoginScreen.routes: (context) => LoginScreen(),
  SignupScreen.routes: (context) => SignupScreen(),
  HomeScreen.routes: (context) => HomeScreen(),
  HomeTScreen.routes: (context) => HomeTScreen(),
  MenuScreen.routes: (context) => MenuScreen(),
  ProfileScreen.routes: (context) => ProfileScreen(),
  UserScreen.routes: (context) => UserScreen(),
  AddPicture.routes: (context) => AddPicture(),
};
