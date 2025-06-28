import 'package:flutter/material.dart';

import 'app_colors.dart';

class EcomAppBarTheme {
  static final AppBarTheme lightAppBarTheme = const AppBarTheme(
    backgroundColor: AppColors.primary,
    foregroundColor: AppColors.onPrimary,
  );

  static final AppBarTheme darkAppBarTheme = const AppBarTheme(
    backgroundColor: AppColors.primaryDark,
    foregroundColor: AppColors.onPrimaryDark,
  );
}