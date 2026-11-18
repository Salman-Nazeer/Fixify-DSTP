import 'package:fixify/constant/colors.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;

    return Scaffold(
      backgroundColor: AppColors.lightBackground,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            // Responsive sizing
            final logoSize = (screenWidth * 0.25).clamp(52.0, 72.0);
            final iconSize = logoSize * 0.55;
            final titleSize = (screenWidth * 0.105).clamp(22.0, 28.0);

            return Column(
              children: [
                // Main content

                // Bottom tagline
                Padding(
                  padding: EdgeInsets.only(
                    bottom: constraints.maxHeight * 0.055,
                  ),
                  child: Text(
                    'One app. A better day for everyone.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: (screenWidth * 0.027).clamp(9.0, 11.0),
                      color: AppColors.secondary,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
