import 'package:flutter/material.dart';
import 'package:lembrei/theme/app_colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.background,
    primaryColor: AppColors.principal,
    fontFamily: "Roboto",
  );
}