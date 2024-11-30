import 'package:flutter/material.dart';
import 'package:news/core/helps/extension.dart';
import 'package:news/core/utils/app_colors.dart';

import '../../core/routing/routes.dart';
import '../../core/utils/app_image.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();

    _initializeApp();
  }

  Future<void> _initializeApp() async {
    await Future.delayed(const Duration(seconds: 2));
    context.pushReplacementNamed(Routes.home);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Center(
          child: Image.asset(
        ImageAssets.splash,
      )),
    );
  }
}
