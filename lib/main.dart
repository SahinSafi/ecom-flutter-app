import 'package:ecom/core/ui/theme/ecom_theme.dart';
import 'package:ecom/presentation/home/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: EcomTheme.lightTheme,
      darkTheme: EcomTheme.darkTheme,
      home: const HomeScreen(),
    );
  }
}
