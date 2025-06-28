import 'package:flutter/material.dart';

import 'app_colors.dart';

class EcomTextTheme {
  EcomTextTheme._();

  static final TextTheme lightTheme = TextTheme(
    titleLarge: const TextStyle().copyWith(fontSize: 22, color: AppColors.black, fontWeight: FontWeight.w500),
    bodyLarge: const TextStyle().copyWith(fontSize: 16, color: AppColors.black, fontWeight: FontWeight.normal),
    bodyMedium: const TextStyle().copyWith(fontSize: 14, color: AppColors.black, fontWeight: FontWeight.normal),
    bodySmall: const TextStyle().copyWith(fontSize: 12, color: AppColors.black, fontWeight: FontWeight.normal),
  );

  static final TextTheme darkTheme = TextTheme(
    titleLarge: const TextStyle().copyWith(fontSize: 22, color: AppColors.white, fontWeight: FontWeight.w500),
    bodyLarge: const TextStyle().copyWith(fontSize: 16, color: AppColors.white, fontWeight: FontWeight.normal),
    bodyMedium: const TextStyle().copyWith(fontSize: 14, color: AppColors.white, fontWeight: FontWeight.normal),
    bodySmall: const TextStyle().copyWith(fontSize: 12, color: AppColors.white, fontWeight: FontWeight.normal),
  );
}