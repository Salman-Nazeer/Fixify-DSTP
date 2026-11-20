import 'package:fixify/controllers/auth_controller.dart';
// import 'package:fixify/views/coustomer/provider_details.dart';
import 'package:fixify/views/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  Get.put(AuthController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)),
      home: const SplashScreen(),
      // home: const ProviderDetailsScreen(),
    );
  }
}
