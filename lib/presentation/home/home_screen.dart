import 'package:flutter/material.dart';

import '../../core/ui/values/strings.dart';
import 'banner_and_category.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(Strings.titleEcom),),
      body: BannerAndCategory(),
    );
  }
}
