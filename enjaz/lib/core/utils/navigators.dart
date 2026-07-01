import 'package:flutter/material.dart';

class Navigators {
  static void goTo(BuildContext context, Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => screen),
    );
  }
}