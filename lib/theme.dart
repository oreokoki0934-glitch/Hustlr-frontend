import 'package:flutter/material.dart';

class AppColors {
  static const primary = Color(0xFFF47920);      // orange
  static const primaryDark = Color(0xFFA84B00);  // darker orange/brown
  static const background = Color(0xFFFFF8E7);   // light/off-white
  static const white = Colors.white;
  static const textDark = Color(0xFF333333);
}

final appTheme = ThemeData(
  scaffoldBackgroundColor: AppColors.background,
  colorScheme: ColorScheme.fromSeed(
    seedColor: AppColors.primary,
    brightness: Brightness.light,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.primary,
      foregroundColor: AppColors.white,
      padding: const EdgeInsets.symmetric(vertical: 15),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: AppColors.primaryDark),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: AppColors.primary),
    ),
    labelStyle: TextStyle(color: AppColors.textDark),
    filled: true,
    fillColor: Colors.white,
  ),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(color: AppColors.textDark),
  ),
);