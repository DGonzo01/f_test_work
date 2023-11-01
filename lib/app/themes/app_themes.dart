import 'package:f_test_work/app/themes/app_colors.dart';
import 'package:flutter/material.dart';

class AppThemes {
  static ThemeData get lightTheme {
    return ThemeData(
      fontFamily: 'Roboto',
      appBarTheme: AppBarTheme(
          surfaceTintColor: Colors.transparent,
          backgroundColor: AppColors.headerBackgroundColor,
          titleTextStyle:
              const TextStyle(fontWeight: FontWeight.w700, color: Colors.red)),
      inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))),
      elevatedButtonTheme:
          ElevatedButtonThemeData(style: ElevatedButton.styleFrom()),
      useMaterial3: true,
    );
  }
}
