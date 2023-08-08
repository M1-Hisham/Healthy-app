import 'package:flutter/material.dart';
import '../colors.dart';
import '../font_size.dart';

class TextsField extends StatelessWidget {
  const TextsField(
      {super.key, required this.textInputType, required this.text, this.pas});
  final TextInputType textInputType;
  final String text;
  final bool? pas;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: pas ?? false,
      cursorColor: green,
      keyboardType: textInputType,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 26),
        labelText: text,
        labelStyle: TextStyle(
          color: green,
          fontFamily: "Inter",
          fontSize: 18,
          fontWeight: w600,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: green, width: 2.0),
          borderRadius: BorderRadius.circular(20),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: green, width: 1.5),
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}
