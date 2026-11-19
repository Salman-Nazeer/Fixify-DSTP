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

                        SizedBox(height: constraints.maxHeight * 0.035),

                        // App Name
                        Text(
                          'Kaamly',
                          style: TextStyle(
                            fontSize: titleSize,
                            fontWeight: FontWeight.w700,
                            color: AppColors.primary,
                            letterSpacing: 0.3,
                          ),
                        ),

                        const SizedBox(height: 8),

                        // Tagline
                        Text(
                          'Good help.\nRight at your doorstep.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: (screenWidth * 0.034).clamp(11.0, 14.0),
                            height: 1.45,
                            fontWeight: FontWeight.w400,
                            color: AppColors.secondary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

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
