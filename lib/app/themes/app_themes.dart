import 'package:flutter/material.dart';

class AppThemes {
  static ThemeData get lightTheme {
    return ThemeData(
      appBarTheme: AppBarTheme(),
      inputDecorationTheme: InputDecorationTheme(border: OutlineInputBorder()),
      useMaterial3: true,
    );
  }
}
