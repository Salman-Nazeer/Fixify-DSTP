import 'package:fixify/app/app_theme.dart';
import 'package:fixify/constant/fontsapp.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor(context),
      body: Center(
        child: Text(
          'Profile Screen',
          style: TextStyle(
            fontFamily: AppFonts.headingFont,
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: AppTheme.primaryTextColor(context),
          ),
        ),
      ),
    );
  }
}
