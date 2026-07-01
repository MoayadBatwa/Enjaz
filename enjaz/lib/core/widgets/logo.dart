import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Image.asset(
      'assets/images/logo/logo.png',
      height: orientation == Orientation.portrait ? 10.h : 5.h,
      color: isDark ? Colors.white : null,
    );
  }
}
