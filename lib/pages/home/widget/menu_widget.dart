import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:news/core/utils/app_colors.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: (){
      ZoomDrawer.of(context)!.toggle();
    },
        icon: const Icon(Icons.menu ,size: 30,color: AppColors.white,),
    );
  }
}
