import 'package:flutter/material.dart';

import 'app_colors.dart';

class EcomAppBarTheme{
  final AppBarTheme lightAppBarTheme = const AppBarTheme(
    backgroundColor: AppColors.primary,
    foregroundColor: AppColors.onPrimary,
  );

  final AppBarTheme darkAppBarTheme = const AppBarTheme(
    backgroundColor: AppColors.primaryDark,
    foregroundColor: AppColors.onPrimaryDark,
  );
}