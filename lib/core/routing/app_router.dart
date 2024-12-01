import 'package:flutter/material.dart';
import 'package:news/core/routing/routes.dart';
import 'package:news/pages/home/home_view.dart';
import 'package:news/pages/splash/splash_view.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    // final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(
          builder: (_) => const SplashView(),
        );
      case Routes.home:
        return MaterialPageRoute(
          builder: (_) => const HomeView(),
        );

      default:
        return null;
    }
  }
}