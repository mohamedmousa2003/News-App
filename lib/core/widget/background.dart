import 'package:flutter/cupertino.dart';
import 'package:news/core/utils/app_colors.dart';
import 'package:news/core/utils/app_image.dart';

class Background extends StatelessWidget {
  const Background({super.key});
  @override
  Widget build(BuildContext context) {
    var mediaQuery=MediaQuery.of(context).size;
    return Container(
      width: mediaQuery.width,
      height: mediaQuery.height,
      decoration: BoxDecoration(
        color: AppColors.white,
        image:const DecorationImage(image: AssetImage(ImageAssets.background),
          fit: BoxFit.cover,
        )
      ),
    );
  }
}
