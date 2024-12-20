import 'package:flutter/material.dart';
import 'package:news/core/utils/app_colors.dart';
import 'package:news/core/utils/app_string.dart';
import 'package:news/core/widget/background.dart';
import 'widget/menu_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.transparent,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        leading: const MenuWidget(),
        title: const Text(AppString.appBarName,style: TextStyle(
          color: AppColors.white,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        ),
        centerTitle: true,
      ),
      body: const Stack(
        children: [
          Background(),
        ],
      ),
    );
  }
}
