import 'package:fixify/views/coustomeWidgts/app_bar.dart';
import 'package:fixify/views/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:fixify/constant/colors.dart';
import 'package:fixify/constant/fontsapp.dart';
import 'package:fixify/app/app_theme.dart';
import 'package:get/get.dart';

class BecomeProviderScreen extends StatelessWidget {
  const BecomeProviderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    final isDark = AppTheme.isDark(context);
    final background = AppTheme.backgroundColor(context);
    final surface = AppTheme.surfaceColor(context);
    final textPrimary = AppTheme.primaryTextColor(context);
    final textSecondary = AppTheme.secondaryTextColor(context);

    return Scaffold(
      backgroundColor: background,

      appBar: customAppBar(
        context,
        title: "Become a provider",
        showBackButton: true,
      ),

      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.06,
            vertical: height * 0.025,
          ),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Partner registration label
                      Container(
                        width: 180,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          color: isDark ? AppColors.darkCard : AppColors.mint,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          "PARTNER REGISTRATION",
                          style: TextStyle(
                            color: isDark
                                ? AppColors.primaryLight
                                : AppColors.primaryDark,
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),

                      SizedBox(height: height * 0.025),

                      // Main heading
                      Text(
                        "Bring your skills.\n"
                        "We’ll bring the bookings.",
                        style: TextStyle(
                          fontFamily: AppFonts.headingFont,
                          fontSize: (width * 0.065)
                              .clamp(22.0, 32.0)
                              .toDouble(),
                          fontWeight: FontWeight.bold,
                          color: textPrimary,
                          height: 1.3,
                        ),
                      ),

                      SizedBox(height: height * 0.03),

                      // Business name label
                      Text(
                        "Business / display name",
                        style: TextStyle(fontSize: 13, color: textSecondary),
                      ),

                      const SizedBox(height: 8),

                      // Business name text field
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: surface,
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: TextField(
                          style: TextStyle(fontSize: 14, color: textPrimary),
                          decoration: InputDecoration(
                            hintText: "Greenline Plumbing",
                            hintStyle: TextStyle(
                              color: textPrimary,
                              fontSize: 13,
                            ),
                            border: InputBorder.none,
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 14,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: height * 0.022),

                      // Primary service label
                      Text(
                        "Primary service",
                        style: TextStyle(fontSize: 13, color: textSecondary),
                      ),

                      const SizedBox(height: 8),

                      // Primary service text field
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: surface,
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: TextField(
                          style: TextStyle(fontSize: 13, color: textPrimary),
                          decoration: InputDecoration(
                            hintText: "Plumbing",
                            hintStyle: TextStyle(
                              fontSize: 13,
                              color: textPrimary,
                            ),
                            border: InputBorder.none,
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 14,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: height * 0.022),

                      // Experience and service area label
                      Text(
                        "Experience & service area",
                        style: TextStyle(fontSize: 13, color: textSecondary),
                      ),

                      const SizedBox(height: 8),

                      // Experience and service area text field
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: surface,
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: TextField(
                          style: TextStyle(fontSize: 13, color: textPrimary),
                          decoration: InputDecoration(
                            hintText: "6 years · Bengaluru · Within 5 km",
                            hintStyle: TextStyle(
                              fontSize: 13,
                              color: textPrimary,
                            ),
                            border: InputBorder.none,
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 14,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: height * 0.04),

                      // Create provider profile button
                      SizedBox(
                        width: double.infinity,
                        height: 54,
                        child: ElevatedButton(
                          onPressed: () {
                            Get.offAll(() => const Navbar());
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.primary,
                            foregroundColor: AppColors.white,
                            elevation: 0,
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14),
                            ),
                          ),
                          child: const Row(
                            children: [
                              Text(
                                "Create provider profile",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),

                              Spacer(),

                              Icon(
                                Icons.arrow_forward,
                                color: AppColors.mint,
                                size: 22,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
