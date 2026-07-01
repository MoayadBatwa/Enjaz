import 'package:flutter/material.dart';

@immutable
class AppSectionTheme extends ThemeExtension<AppSectionTheme> {
  final Color backgroundColor;
  final Color textColor;

  const AppSectionTheme({
    required this.backgroundColor,
    required this.textColor,
  });

  @override
  AppSectionTheme copyWith({
    Color? backgroundColor,
    Color? textColor,
  }) {
    return AppSectionTheme(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      textColor: textColor ?? this.textColor,
    );
  }

  @override
  AppSectionTheme lerp(ThemeExtension<AppSectionTheme>? other, double t) {
    if (other is! AppSectionTheme) return this;

    return AppSectionTheme(
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t)!,
      textColor: Color.lerp(textColor, other.textColor, t)!,
    );
  }
}