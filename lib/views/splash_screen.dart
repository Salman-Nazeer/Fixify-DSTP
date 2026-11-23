import 'package:fixify/constant/colors.dart';
import 'package:fixify/constant/fontsapp.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;
    final logoSize = (screenWidth * 0.25).clamp(52.0, 72.0).toDouble();
    final iconSize = logoSize * 0.55;
    final titleSize = (screenWidth * 0.105).clamp(22.0, 28.0).toDouble();

    return Scaffold(
      backgroundColor: AppColors.lightBackground,
      body: SafeArea(
        child: Column(
              children: [
                // Main content
                Expanded(
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // App Logo
                        Container(
                          width: logoSize,
                          height: logoSize,
                          decoration: BoxDecoration(
                            color: AppColors.primaryDark,
                            borderRadius: BorderRadius.circular(
                              logoSize * 0.25,
                            ),
                          ),
                          child: Icon(
                            Icons.home_outlined,
                            size: iconSize,
                            color: AppColors.mint,
                            weight: 1.5,
                          ),
                        ),

                        SizedBox(height: screenWidth * 0.08),

                        // App Name
                        Text(
                          'Kaamly',
                          style: TextStyle(
                            fontFamily: AppFonts.headingFont,
                            fontWeight: FontWeight.bold,
                            color: AppColors.primary,
                            fontSize: titleSize,
                            letterSpacing: 0.3,
                          ),
                        ),

                        const SizedBox(height: 8),

                        // Tagline
                        Text(
                          'Good help.\nRight at your doorstep.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: AppFonts.bodyFont,
                            fontSize: (screenWidth * 0.034).clamp(11.0, 14.0),
                            height: 1.45,
                            color: AppColors.secondary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // Bottom tagline
                Padding(
                  padding: EdgeInsets.only(bottom: screenWidth * 0.12),
                  child: Text(
                    'One app. A better day for everyone.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: AppFonts.bodyFont,
                      fontSize: (screenWidth * 0.027).clamp(9.0, 11.0),
                      color: AppColors.secondary,
                    ),
                  ),
                ),
              ],
        ),
      ),
    );
  }
}
