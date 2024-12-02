import '../../setting/setting_view.dart';
import '../../test/menu_page.dart';
import '../home_view.dart';

getScreen(currentItem) {
  switch (currentItem){
    case MenuItems.categories:
      return const HomeView();
    case MenuItems.setting:
      return const  SettingView();
  }
}