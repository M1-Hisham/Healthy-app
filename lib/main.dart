import 'package:flutter/material.dart';
import 'package:healthy/routs/routs.dart';
import 'package:healthy/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: LoginScreen.routes,
      routes: routes,
    );
  }
}
