import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/pages/splash/splash_view.dart';
import 'package:news/pages/test/home_page.dart';
import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';

void main() {
  runApp(MyApp(appRouter: AppRouter(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key ,required this.appRouter});
  final AppRouter appRouter;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      designSize: const Size(double.infinity, double.infinity),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'News App',
        //initialRoute: Routes.splash,
        //onGenerateRoute: appRouter.generateRoute,
        home:   HomePage(),
      ),
    );
  }
}
