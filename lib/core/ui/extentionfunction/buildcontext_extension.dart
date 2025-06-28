import 'package:flutter/material.dart';

extension BuildContextExtension on BuildContext {

   ColorScheme get getColor => Theme.of(this).colorScheme;

}