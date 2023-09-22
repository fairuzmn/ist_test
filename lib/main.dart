import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:isttest/app/bindings/app_binding.dart';
import 'package:isttest/routes/app_links.dart';
import 'package:isttest/routes/app_routes.dart';

void main() {

  AppBinding().dependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          title: 'IST Test',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(useMaterial3: true),
          getPages: AppRoutes.pages,
          initialRoute: AppLinks.HOME,
          // initialBinding: AppBinding(),
        );
      },
    );
  }
}
