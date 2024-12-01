import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/core/utils/app_colors.dart';
import 'package:news/core/utils/app_string.dart';

import '../home/model/menu_ithems.dart';

class MenuPage extends StatelessWidget {
   MenuPage({super.key,
     required this.currentItem,
     required this.onSelectedItem,
   });
 final MenuItem currentItem;
 final ValueChanged<MenuItem> onSelectedItem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.gray,
      body: SafeArea(child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Spacer(),
          ...MenuItems.all.map(buildMenuItem),
          const Spacer(flex: 2,),
        ],
      )),
    );
  }

  Widget buildMenuItem(MenuItem item)=>ListTileTheme(
    selectedTileColor: AppColors.primary,

    child: ListTile(
      selectedTileColor: AppColors.primary,
      selected:  currentItem ==item,
      minLeadingWidth: 20.w,
      minTileHeight: 30.h,
      leading: Icon(item.icon ,size: 40,color: AppColors.black,),
      title: Text(item.title ,style:  const TextStyle(
        color: AppColors.black,
        fontSize: 25,
        fontWeight: FontWeight.bold
      ),),
      onTap: () => onSelectedItem(item),
    ),
  );

}

class MenuItems{
  static const categories =MenuItem(AppString.categories ,Icons.category);
  static const setting =MenuItem(AppString.setting,Icons.settings);
  static const all =<MenuItem>[
    categories,
    setting,
  ];
}
