import 'package:flutter/material.dart';
import 'package:gutenberg_project/core/themes/theme_extention.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: Color(0XFF5E56E7),
    cardColor: Color(0XFFFFFFFF),
    scaffoldBackgroundColor: Color(0XFFFFFFFF),
    canvasColor: Color(0XFFF8F7FF),
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        fontFamily: "Montserrat",
        fontSize: 48,
        fontWeight: FontWeight.w600,
        overflow: TextOverflow.ellipsis,
        color: Color(0XFF5E56E7),
      ),
      headlineMedium: TextStyle(
        fontFamily: "Montserrat",
        fontSize: 30,
        fontWeight: FontWeight.w600,
        overflow: TextOverflow.ellipsis,
        color: Color(0XFF5E56E7),
      ),
      titleMedium: TextStyle(
        fontFamily: "Montserrat",
        fontSize: 20,
        fontWeight: FontWeight.w400,
        overflow: TextOverflow.ellipsis,
        color: Color(0XFF333333),
      ),
      bodyLarge: TextStyle(
        fontFamily: "Montserrat",
        fontSize: 16,
        fontWeight: FontWeight.w400,
        overflow: TextOverflow.ellipsis,
        color: Color(0XFF333333),
      ),
      bodyMedium: TextStyle(
        fontFamily: "Montserrat",
        fontSize: 14,
        fontWeight: FontWeight.w400,
        overflow: TextOverflow.ellipsis,
        color: Color(0XFF333333),
      ),
      bodySmall: TextStyle(
        fontFamily: "Montserrat",
        fontSize: 12,
        fontWeight: FontWeight.w400,
        overflow: TextOverflow.ellipsis,
        color: Color(0XFF333333),
      ),
    ),
    extensions: <ThemeExtension<dynamic>>[
      const SemanticColors(
        success: Color(0xFF66BB6A),
        warning: Color(0xFFFFA000),
        info: Color(0xFF29B6F6),
        error: Color(0xFFE53935),
      ),
      const GreyShades(
        light: Color(0xFFF0F0F6),
        medium: Color(0xFFA0A0A0),
        dark: Color(0xFF333333),
      ),
    ],
    // inputDecorationTheme: InputDecorationTheme(),
  );
}
