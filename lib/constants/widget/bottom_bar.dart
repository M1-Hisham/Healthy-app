import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:healthy/constants/colors.dart';
import 'package:healthy/screens/addPicture_screen.dart';
import 'package:healthy/screens/home_screen.dart';
import 'package:healthy/screens/menu_screen.dart';
import 'package:healthy/screens/profile_screen.dart';

import '../method/navigator.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBar({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topRight: Radius.circular(15),
        topLeft: Radius.circular(15),
      ),
      child: BottomNavigationBar(
          backgroundColor: green,
          selectedItemColor: white,
          type: BottomNavigationBarType.fixed,
          currentIndex: index,
          onTap: (value) {
            if (value == 0) {
              navPushReplacement(context: context, screen: MenuScreen());
            } else if (value == 1) {
              navPushReplacement(context: context, screen: AddPicture());
            } else if (value == 2) {
              navPushReplacement(context: context, screen: HomeScreen());
            } else if (value == 3) {
            } else if (value == 4) {
              navPushReplacement(context: context, screen: ProfileScreen());
            }
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.bars), label: 'Menu'),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.circlePlus),
              label: 'Add',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.house),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.heart),
              label: 'Loves',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.circleUser),
              label: 'User',
            ),
          ]),
    );
  }
}
