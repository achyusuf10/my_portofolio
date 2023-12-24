import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:my_portofolio/configs/pages/app_pages.dart';
import 'package:my_portofolio/configs/routes/app_routes.dart';
import 'package:my_portofolio/configs/themes/app_themes.dart';
import 'package:my_portofolio/constants/common/app_const.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

void main() {
  HttpOverrides.global = MyHttpOverrides();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      useInheritedMediaQuery: true,
      designSize: AppConst.appDesignSizeWeb,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Yu Portofolio',
          initialRoute: AppRoutes.landingScreen,
          getPages: AppPages.pages(),
          theme: AppThemes.lightTheme,
          themeMode: ThemeMode.light,
          darkTheme: AppThemes.darkTheme,
        );
      },
    );
  }
}
