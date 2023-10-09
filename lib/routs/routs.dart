import 'package:flutter/material.dart';
import 'package:healthy/screens/addPicture_screen.dart';
import 'package:healthy/screens/home_screen.dart';
import 'package:healthy/screens/login_screen.dart';
import 'package:healthy/screens/profile_screen.dart';
import 'package:healthy/screens/recipes_screen.dart';
import 'package:healthy/screens/signup_screen.dart';
import 'package:healthy/screens/user_screen.dart';
import '../screens/home2_screen.dart';

Map<String, WidgetBuilder> routes = {
  LoginScreen.routes: (context) => const LoginScreen(),
  SignupScreen.routes: (context) => const SignupScreen(),
  HomeScreen.routes: (context) => const HomeScreen(),
  HomeTScreen.routes: (context) => const HomeTScreen(),
  RecipesScreen.routes: (context) => const RecipesScreen(),
  ProfileScreen.routes: (context) => const ProfileScreen(),
  UserScreen.routes: (context) => const UserScreen(),
  AddPicture.routes: (context) => const AddPicture(),
};
