import 'dart:io';

import 'package:flutter/material.dart';
import 'package:green_mart_app/core/utils/themes.dart';
import 'package:green_mart_app/features/intro/splash_view.dart';

void main() {
  runApp(const GreenMart());
}

class GreenMart extends StatelessWidget {
  const GreenMart({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppThemes.light,
      builder: (context, child) {
        return SafeArea(
          bottom: Platform.isAndroid ? true : false,
          top: false,
          child: child ?? Container(),
        );
      },
      home: const SplashView(),
    );
  }
}
