// ignore_for_file: non_constant_identifier_names, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:healthy/constants/font_size.dart';

import '../colors.dart';

class ElButton extends StatelessWidget {
  const ElButton({
    super.key,
    required this.name,
    required this.color,
    required this.textcolor,
    required this.fontSize,
    this.FontWeight,
    this.sideColor,
    required this.onPressed,
  });
  final String name;
  final Color color;
  final Color textcolor;
  final double fontSize;
  final FontWeight;
  final Color? sideColor;
  final onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 41,
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            side: BorderSide(color: sideColor ?? green, width: 2),
            backgroundColor: color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          child: Text(
            name,
            style: TextStyle(
              fontFamily: "Inter",
              fontSize: fontSize,
              fontWeight: FontWeight,
              color: textcolor,
            ),
          ),
          onPressed: () {
            Navigator.pushNamed(context, onPressed);
          },
        ));
  }
}

class ElButtonIcon extends StatelessWidget {
  const ElButtonIcon(
      {super.key,
      required this.titel,
      required this.icon,
      this.sideColor,
      this.color});
  final String titel;
  final String icon;
  final Color? color;
  final Color? sideColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 41,
      width: double.infinity,
      child: ElevatedButton.icon(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.only(left: 28),
          alignment: Alignment.centerLeft,
          side: BorderSide(color: sideColor ?? green, width: 2),
          backgroundColor: color ?? green,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        icon: Image.asset('assets/icons/$icon'),
        label: Center(
          child: Text(
            titel,
            style: TextStyle(
              fontFamily: "Inter",
              fontSize: h2,
              fontWeight: w600,
              color: green,
            ),
          ),
        ),
      ),
    );
  }
}
