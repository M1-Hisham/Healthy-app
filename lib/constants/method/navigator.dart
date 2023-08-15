import 'package:flutter/material.dart';

void navPush({required BuildContext context, required Widget screen}) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => screen,
    ),
  );
}

//pop
void navPop({required BuildContext context, required Widget screen}) {
  Navigator.pop(
    context,
    MaterialPageRoute(
      builder: (context) => screen,
    ),
  );
}

//pushReplacement
void navPushReplacement(
    {required BuildContext context, required Widget screen}) {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(
      builder: (context) => screen,
    ),
  );
}
