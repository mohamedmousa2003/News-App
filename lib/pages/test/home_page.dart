import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import '../../core/utils/app_colors.dart';
import '../home/model/menu_ithems.dart';
import '../home/widget/gerScreen.dart';
import 'menu_page.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 MenuItem currentItem =MenuItems.categories;

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      borderRadius: 40,
      angle: -10,
      slideWidth: MediaQuery.of(context).size.width*0.8,
      drawerShadowsBackgroundColor: Colors.orangeAccent,
      showShadow: true,
      shadowLayer2Color: AppColors.red,
      menuBackgroundColor: AppColors.gray,
        menuScreen:  Builder(
          builder: (context) {
            return MenuPage(
              currentItem :currentItem,
              onSelectedItem: (item){
                setState(() {
                  currentItem = item;
                });
                ZoomDrawer.of(context)!.close();
              },
            );
          }
        ),
        mainScreen:getScreen(currentItem),
    );

  }

}
