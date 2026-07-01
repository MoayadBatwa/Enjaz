import 'package:enjaz/core/constants/app_colors.dart';
import 'package:enjaz/core/theme/app_section_theme.dart';
import 'package:flutter/material.dart';
import 'app_text_theme.dart';

abstract class AppTheme {
  AppTheme._();

  static const Color primaryColor = Color(0xFF002045);
  static const Color cardColor = Color(0xFFF5F8FC);
  static const Color borderColor = Color(0xFF94A3B8);

  // LIGHT THEME ********************************************************
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light(
      primary: primaryColor,
      secondary: primaryColor,
      surface: cardColor,
      error: Colors.red,
    ),

    scaffoldBackgroundColor: AppColors.background,
    cardColor: const Color.fromARGB(255, 251, 250, 255),

    iconTheme: const IconThemeData(color: AppColors.primary),

    textTheme: AppTextTheme.lightTextTheme.apply(
      bodyColor: AppColors.textPrimary,
      displayColor: AppColors.primary,
    ),

    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.background,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(color: AppColors.primary),
    ),

    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColors.primary,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 4,
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),

    filledButtonTheme: FilledButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),

    switchTheme: SwitchThemeData(
      thumbColor: WidgetStatePropertyAll(AppColors.primary),
    ),

    inputDecorationTheme: InputDecorationTheme(
      errorStyle: const TextStyle(fontSize: 12, height: 0.8),

      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: const BorderSide(color: AppColors.textHint),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: const BorderSide(color: AppColors.textHint),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(22),
        borderSide: const BorderSide(color: AppColors.primary, width: 2),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: const BorderSide(color: Colors.red, width: 1.5),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: const BorderSide(color: Colors.red, width: 2),
      ),
      floatingLabelStyle: TextStyle(color: AppColors.primary),
    ),

    cardTheme: CardThemeData(
      color: const Color.fromARGB(255, 251, 250, 255),
      elevation: 0.5,
      margin: const EdgeInsets.symmetric(horizontal: 15),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
    ),

    dividerTheme: DividerThemeData(
      color: Colors.grey.shade300,
    ),

    tabBarTheme: TabBarThemeData(
      labelColor: AppColors.primary,
      unselectedLabelColor: Colors.grey,
      indicatorColor: AppColors.primary,
      labelStyle: const TextStyle(fontWeight: FontWeight.bold),
    ),

    extensions: const <ThemeExtension<dynamic>>[
      AppSectionTheme(
        backgroundColor: AppColors.primary,
        textColor: Color.fromARGB(255, 251, 250, 255),
      ),
    ],
  );

  // DARK THEME ********************************************************
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,

    colorScheme: const ColorScheme.dark(
      primary: AppColors.primary,
      secondary: AppColors.secondary,
      surface: Color(0xFF2A2438),
      error: Colors.red,
    ),

    scaffoldBackgroundColor: const Color(0xFF332D4D),
    cardColor: const Color(0xFF40385C),

    iconTheme: const IconThemeData(color: Colors.white),

    textTheme: AppTextTheme.darkTextTheme.apply(
      bodyColor: Color(0xFFF3F4F6),
      displayColor: Colors.white,
    ),

    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF332D4D),
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(color: Colors.white),
    ),

    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Color.fromARGB(255, 251, 250, 255),
      foregroundColor: AppColors.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 4,
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFFF5F5F5),
        foregroundColor: AppColors.primary,
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),

    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        backgroundColor: const Color(0xFFF5F5F5),
        foregroundColor: AppColors.primary,
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),

    switchTheme: SwitchThemeData(
      thumbColor: WidgetStatePropertyAll(AppColors.secondary),
    ),

    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: const Color(0xFF312B45),

      errorStyle: const TextStyle(fontSize: 12, height: 0.8),

      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: const BorderSide(color: Colors.white24),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: const BorderSide(color: Colors.white24),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(22),
        borderSide: const BorderSide(
          color: AppColors.secondary,
          width: 2,
        ),
      ),
      floatingLabelStyle: const TextStyle(
        color: Color.fromARGB(255, 251, 250, 255),
      ),
    ),

    dividerTheme: DividerThemeData(
      color: Colors.white.withValues(alpha: 0.08),
    ),

    tabBarTheme: TabBarThemeData(
      labelColor: Colors.white,
      unselectedLabelColor: Colors.white54,
      indicatorColor: AppColors.secondary,
      labelStyle: const TextStyle(fontWeight: FontWeight.bold),
    ),

    extensions: const <ThemeExtension<dynamic>>[
      AppSectionTheme(
        backgroundColor: Color.fromARGB(255, 251, 250, 255),
        textColor: AppColors.primary,
      ),
    ],
  );
}