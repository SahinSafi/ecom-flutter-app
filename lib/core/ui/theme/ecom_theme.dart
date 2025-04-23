import 'package:ecom/core/ui/theme/ecom_app_bar_theme.dart';
import 'package:flutter/material.dart';

class EcomTheme {
  EcomTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    appBarTheme: EcomAppBarTheme().lightAppBarTheme
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    appBarTheme: EcomAppBarTheme().darkAppBarTheme
  );
}