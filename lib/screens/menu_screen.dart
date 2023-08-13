import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:healthy/constants/colors.dart';

import '../constants/font_size.dart';
import '../constants/widget/bottom_bar.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});
  static const routes = "/MenuScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: green,
          // <-- SEE HERE
        ),
        backgroundColor: white2,
        shadowColor: green,
        elevation: 2,
        actions: [
          IconButton(
            icon: Icon(FontAwesomeIcons.solidBell),
            color: green,
            onPressed: () {},
          ),
        ],
        title: Center(
          child: Text(
            'HEALTHY',
            style: TextStyle(
              fontFamily: "Inter",
              fontSize: h1,
              fontWeight: w700,
              color: green,
            ),
          ),
        ),
      ),
      body: Center(
          child: Text(
        "menu\nsoon",
        textAlign: TextAlign.center,
        style:
            TextStyle(color: green, fontWeight: FontWeight.bold, fontSize: 50),
      )),
      bottomNavigationBar: BottomNavBar(index: 0),
    );
  }
}
