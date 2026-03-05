import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasks/core/routing/app_route.dart';
import 'package:tasks/core/routing/routes.dart';
import 'package:tasks/core/theming/app_colors.dart';

class MyApp extends StatelessWidget {
  final AppRoute appRoute;
  const MyApp({super.key, required this.appRoute});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: AppColors.mainBlue,
          scaffoldBackgroundColor: Colors.white,
          
        ),
        initialRoute: Routes.onBoardingScreen,
        onGenerateRoute: appRoute.generateRoute,
      ),
    );
  }
}
