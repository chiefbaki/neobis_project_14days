import 'package:eco_market/feature/presenation/routes/app_router.dart';
import 'package:eco_market/feature/presenation/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) => MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouter().config(),
        theme: ThemeData(
          chipTheme: const ChipThemeData(
            disabledColor: AppColors.grey,
            selectedColor: AppColors.selectedTabItemColor
          ),
            scaffoldBackgroundColor: AppColors.scaffoldBgColor,
            appBarTheme: const AppBarTheme(
                color: AppColors.scaffoldBgColor, elevation: 0)),
      ),
    );
  }
}
