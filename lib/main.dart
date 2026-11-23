import 'package:fixify/app/app_theme.dart';
import 'package:fixify/controllers/auth_controller.dart';
import 'package:fixify/controllers/theme_controller.dart';
import 'package:fixify/views/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  Get.put(AuthController());
  Get.put(ThemeController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.light,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: const SplashScreen(),
    );
  }
}

// code ko set karna ha, removed karna ha extra widgts, appBar coustome design kia ha,
// hadi ka code us ke branch sa ly kar dev ma push karn ha
// functionality ka code baki ha, us ko
