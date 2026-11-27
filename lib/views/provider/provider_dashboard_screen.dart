import 'package:flutter/material.dart';
import 'package:fixify/constant/colors.dart';
import 'package:fixify/constant/fontsapp.dart';
import 'package:fixify/app/app_theme.dart';

class ProviderDashboardScreen extends StatefulWidget {
  const ProviderDashboardScreen({super.key});

  @override
  State<ProviderDashboardScreen> createState() =>
      _ProviderDashboardScreenState();
}

class _ProviderDashboardScreenState extends State<ProviderDashboardScreen> {
  bool isOnline = true;
  bool isJobCompleted = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    // Responsive horizontal padding
    double horizontalPadding = width > 600 ? (width - 550) / 2 : width * 0.06;

    final isDark = AppTheme.isDark(context);
    final background = AppTheme.backgroundColor(context);
    final surface = AppTheme.surfaceColor(context);
    final textPrimary = AppTheme.primaryTextColor(context);
    final textSecondary = AppTheme.secondaryTextColor(context);
    final softColor = isDark ? AppColors.darkCard : AppColors.mint;
    final actionColor = isDark ? AppColors.primaryLight : AppColors.primaryDark;

    return Scaffold(
      backgroundColor: background,

      body: SafeArea(
        bottom: false,

        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: horizontalPadding,
            vertical: height * 0.025,
          ),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ==============================
              // ONLINE / OFFLINE STATUS
              // ==============================

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: softColor,
                  borderRadius: BorderRadius.circular(16),
                ),

                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            isOnline ? "You're online" : "You're offline",
                            style: TextStyle(
                              fontFamily: AppFonts.headingFont,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: actionColor,
                            ),
                          ),

                          const SizedBox(height: 6),

                          Text(
                            isOnline
                                ? "Ready for bookings in Indiranagar"
                                : "You're not accepting bookings",
                            style: TextStyle(
                              fontSize: 11,
                              color: textSecondary,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(width: 8),

                    // Custom online/offline toggle
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isOnline = !isOnline;
                        });
                      },

                      child: Container(
                        width: 48,
                        height: 27,
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: isOnline
                              ? AppColors.primaryDark
                              : AppColors.darkTextHint,
                          borderRadius: BorderRadius.circular(30),
                        ),

                        child: Row(
                          mainAxisAlignment: isOnline
                              ? MainAxisAlignment.end
                              : MainAxisAlignment.start,

                          children: [
                            CircleAvatar(
                              radius: 9,
                              backgroundColor: isOnline
                                  ? AppColors.mint
                                  : AppColors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: height * 0.03),

              // ==============================
              // GREETING SECTION
              // ==============================
              Text(
                "Good morning, Hadi",
                style: TextStyle(
                  fontFamily: AppFonts.headingFont,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: textPrimary,
                ),
              ),

              const SizedBox(height: 7),

              Text(
                "Let's make someone's day easier.",
                style: TextStyle(fontSize: 13, color: textSecondary),
              ),

              SizedBox(height: height * 0.025),

              // ==============================
              // RATING AND TODAY'S JOBS
              // ==============================
              Row(
                children: [
                  // Customer rating card
                  Expanded(
                    child: Container(
                      height: 110,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: AppColors.primaryDark,
                        borderRadius: BorderRadius.circular(18),
                      ),

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "CUSTOMER RATING",
                            style: TextStyle(
                              color: AppColors.mint,
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                            ),
                          ),

                          const Spacer(),

                          const Text(
                            "4.9",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: AppColors.white,
                            ),
                          ),

                          const Text(
                            "128 verified reviews",
                            style: TextStyle(
                              fontSize: 9,
                              color: AppColors.mint,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(width: 12),

                  // Today's jobs card
                  Expanded(
                    child: Container(
                      height: 110,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: surface,
                        borderRadius: BorderRadius.circular(18),
                      ),

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "JOBS COMPLETETD",
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                              color: textSecondary,
                            ),
                          ),

                          const Spacer(),

                          Text(
                            "04",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: textPrimary,
                            ),
                          ),

                          Text(
                            "2 completed",
                            style: TextStyle(fontSize: 9, color: textSecondary),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: height * 0.025),

              // ==============================
              // NEXT JOB HEADING
              // ==============================
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Your next job",
                    style: TextStyle(
                      fontFamily: AppFonts.headingFont,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: textPrimary,
                    ),
                  ),

                  // TextButton(
                  //   onPressed: () {
                  //     // Navigate to all jobs
                  //   },
                  //   child: Text(
                  //     "View all",
                  //     style: TextStyle(
                  //       fontSize: 12,
                  //       fontWeight: FontWeight.w600,
                  //       color: actionColor,
                  //     ),
                  //   ),
                  // ),
                ],
              ),

              const SizedBox(height: 6),

              // ==============================
              // UPCOMING JOB CARD
              // ==============================
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: surface,
                  borderRadius: BorderRadius.circular(18),
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Job time label
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 7,
                      ),
                      decoration: BoxDecoration(
                        color: softColor,
                        borderRadius: BorderRadius.circular(8),
                      ),

                      child: Text(
                        "IN 30 MINUTES",
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                          color: actionColor,
                        ),
                      ),
                    ),

                    const SizedBox(height: 16),

                    // Service name
                    Text(
                      "Tap & leak repair",
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w600,
                        color: textPrimary,
                      ),
                    ),

                    const SizedBox(height: 8),

                    // Customer name and time
                    Text(
                      "Ali · 11 am–1 pm",
                      style: TextStyle(fontSize: 12, color: textSecondary),
                    ),

                    const SizedBox(height: 16),

                    // Location and distance
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          color: actionColor,
                          size: 21,
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "42, 12th Main, Indiranagar",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: textPrimary,
                                ),
                              ),
                              const SizedBox(height: 2),
                              Text(
                                "Karachi, Pakistan",
                                style: TextStyle(
                                  fontSize: 11,
                                  color: textSecondary,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 18),

                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton.icon(
                        onPressed: isJobCompleted
                            ? null
                            : () {
                                setState(() {
                                  isJobCompleted = true;
                                });
                              },
                        icon: Icon(
                          isJobCompleted
                              ? Icons.check_circle_outline
                              : Icons.task_alt,
                        ),
                        label: Text(
                          isJobCompleted
                              ? "Work completed"
                              : "Mark work completed",
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primary,
                          foregroundColor: AppColors.white,
                          disabledBackgroundColor: softColor,
                          disabledForegroundColor: actionColor,
                          elevation: 0,
                          padding: const EdgeInsets.symmetric(vertical: 13),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
