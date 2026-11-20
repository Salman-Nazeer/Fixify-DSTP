import 'package:fixify/controllers/auth_controller.dart';
import 'package:fixify/views/authentication/create_account.dart';
import 'package:fixify/views/authentication/forgot_screen.dart';
import 'package:fixify/views/authentication/role_decide.dart';
import 'package:fixify/views/authentication/sign_in.dart';
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
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const  ForgotPassword(),
    );
  }
}
