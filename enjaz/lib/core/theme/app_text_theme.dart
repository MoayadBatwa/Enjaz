import 'package:enjaz/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

abstract class AppTextTheme {
  static const TextStyle linkPrimary = TextStyle(
    fontSize: 14,
    color: Color(0xFF1F2937),
  );

  static const TextStyle linkSecondary = TextStyle(
    fontSize: 14,
    color: AppColors.primary,
    decoration: TextDecoration.underline,
  );

  static TextTheme lightTextTheme = const TextTheme(
    displayLarge: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
    displayMedium: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
    displaySmall: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
    headlineMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
    headlineSmall: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
    titleLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
    bodyLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
    bodyMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
    bodySmall: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
  );

  static TextTheme darkTextTheme = lightTextTheme.apply(
    bodyColor: Colors.white,
    displayColor: Colors.white,
  );
}
