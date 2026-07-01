import 'package:enjaz/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

extension TextThemeExt on BuildContext {
  TextStyle get linkPrimary => TextStyle(
        fontSize: 14,
        color: Theme.of(this).brightness == Brightness.dark
            ? Colors.white70
            : const Color(0xFF1F2937),
      );

  TextStyle get linkSecondary => TextStyle(
        fontSize: 14,
        color: Theme.of(this).brightness == Brightness.dark
            ? Colors.white
            : AppColors.primary,
        decoration: TextDecoration.underline,
      );
}