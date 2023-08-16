import 'package:flutter/material.dart';
import 'package:healthy/constants/colors.dart';
import '../font_size.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      surfaceTintColor: black,
      elevation: 0,
      width: 230,
      backgroundColor: Colors.transparent,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
            topRight: Radius.elliptical(400, 800),
            bottomRight: Radius.elliptical(400, 800)),
        child: Container(
          color: green,
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BackButton(
                  color: white,
                  style: ButtonStyle(),
                ),
                Divider(
                  color: white,
                  thickness: 2,
                ),
                TextMenu('Account'),
                Divider(
                  color: white,
                  thickness: 2,
                ),
                TextMenu("My Favourites"),
                Divider(
                  color: white,
                  thickness: 2,
                ),
                TextMenu("Privacy"),
                Divider(
                  color: white,
                  thickness: 2,
                ),
                TextMenu("Settings"),
                Divider(
                  color: white,
                  thickness: 2,
                ),
                TextMenu("About"),
                Divider(
                  color: white,
                  thickness: 2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Padding TextMenu(String text) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 10),
    child: Text(
      text,
      style: TextStyle(
        color: white,
        fontSize: 20,
        fontWeight: w600,
        height: 2,
      ),
    ),
  );
}
