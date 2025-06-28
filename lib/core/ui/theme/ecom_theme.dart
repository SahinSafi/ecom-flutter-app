import 'package:ecom/core/ui/theme/app_colors.dart';
import 'package:ecom/core/ui/theme/ecom_app_bar_theme.dart';
import 'package:ecom/core/ui/theme/ecom_card_theme.dart';
import 'package:ecom/core/ui/theme/ecom_text_theme.dart';
import 'package:flutter/material.dart';

class EcomTheme {
  EcomTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    appBarTheme: EcomAppBarTheme.lightAppBarTheme,
    scaffoldBackgroundColor: AppColors.backgroundColor,
    cardTheme: EcomCardTheme.lightCardTheme,
    colorScheme: ColorScheme.light(
      primary: AppColors.primary,
      onPrimary: AppColors.onPrimary,
      secondary: AppColors.secondary,
      onSecondary: AppColors.onSecondary,
      surface: AppColors.surface,
      onSurface: AppColors.onSurface,
    ),
    textTheme: EcomTextTheme.lightTheme
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    appBarTheme: EcomAppBarTheme.darkAppBarTheme,
    scaffoldBackgroundColor: AppColors.backgroundColorDark,
    cardTheme: EcomCardTheme.darkCardTheme,
    colorScheme: ColorScheme.dark(
      primary: AppColors.primaryDark,
      onPrimary: AppColors.onPrimaryDark,
      secondary: AppColors.secondaryDark,
      onSecondary: AppColors.onSecondaryDark,
      surface: AppColors.surfaceDark,
      onSurface: AppColors.onSurfaceDark,
    ),
    textTheme: EcomTextTheme.darkTheme
  );
}