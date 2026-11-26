import 'package:fixify/app/app_theme.dart';
import 'package:fixify/constant/fontsapp.dart';
import 'package:fixify/controllers/trackbooking_controller.dart';
import 'package:fixify/views/coustomeWidgts/app_bar.dart';
import 'package:fixify/views/coustomer/review_screen.dart';
import 'package:flutter/material.dart';
import 'package:fixify/constant/colors.dart';
import 'package:get/get.dart';

final TrackBookingController trackBookingController = Get.put(
  TrackBookingController(),
);

class TrackBookingScreen extends StatelessWidget {
  const TrackBookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double width = size.width;

    final bool isSmall = width < 360;

    final double horizontalPadding = (width * 0.06)
        .clamp(16.0, 28.0)
        .toDouble();

    final Color textColor = AppTheme.primaryTextColor(context);
    final Color secondaryTextColor = AppTheme.secondaryTextColor(context);
    final Color surfaceColor = AppTheme.surfaceColor(context);
    final Color borderColor = AppTheme.borderColor(context);
    final Color activeColor = AppTheme.isDark(context)
        ? AppColors.primaryLight
        : AppColors.primaryDark;
    final Color pendingColor = AppTheme.isDark(context)
        ? AppColors.darkCard
        : AppColors.mint;

    return Scaffold(
      backgroundColor: AppTheme.backgroundColor(context),

      // ---------------- APP BAR ----------------
      appBar: customAppBar(context, title: 'Track booking'),

      // ---------------- MAIN BODY ----------------
      body: SingleChildScrollView(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 540),
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                horizontalPadding,
                12,
                horizontalPadding,
                24,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // -------- LIVE UPDATE CARD --------
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(isSmall ? 15 : 17),
                    decoration: BoxDecoration(
                      color: AppColors.primaryDark,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // LIVE BADGE
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.mint,
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.circle,
                                size: 8,
                                color: AppColors.primaryDark,
                              ),
                              SizedBox(width: 6),
                              Text(
                                'LIVE UPDATE',
                                style: TextStyle(
                                  fontFamily: AppFonts.bodyFont,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.primaryDark,
                                ),
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 17),

                        Text(
                          'Your expert is on the way',
                          style: TextStyle(
                            fontFamily: AppFonts.headingFont,
                            fontSize: isSmall ? 17 : 20,
                            fontWeight: FontWeight.w700,
                            color: AppColors.white,
                          ),
                        ),

                        const SizedBox(height: 8),

                        Text(
                          'Arriving at 11:05 am · Updated just now',
                          style: TextStyle(
                            fontFamily: AppFonts.bodyFont,
                            fontSize: isSmall ? 10 : 12,
                            color: AppColors.mint,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 23),

                  // -------- BOOKING REFERENCE --------
                  Text(
                    'Tap & leak repair',
                    style: TextStyle(
                      fontFamily: AppFonts.headingFont,
                      fontSize: isSmall ? 12 : 13,
                      fontWeight: FontWeight.w600,
                      color: textColor,
                    ),
                  ),

                  const SizedBox(height: 27),

                  // ---------------- BOOKING TIMELINE ----------------

                  // -------- STEP 1: BOOKING CONFIRMED --------
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 20,
                        child: Column(
                          children: [
                            Container(
                              width: 20,
                              height: 20,
                              decoration: const BoxDecoration(
                                color: AppColors.primaryDark,
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.check_rounded,
                                color: AppColors.white,
                                size: 13,
                              ),
                            ),
                            Container(
                              width: 2,
                              height: 26,
                              color: AppColors.primaryDark,
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(width: 13),

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Booking confirmed',
                              style: TextStyle(
                                fontFamily: AppFonts.headingFont,
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: textColor,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              '19 Nov · 9:30 am',
                              style: TextStyle(
                                fontFamily: AppFonts.bodyFont,
                                fontSize: 12,
                                color: secondaryTextColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  // -------- STEP 2: ACCEPTED --------
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 20,
                        child: Column(
                          children: [
                            Container(
                              width: 20,
                              height: 20,
                              decoration: const BoxDecoration(
                                color: AppColors.primaryDark,
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.check_rounded,
                                color: AppColors.white,
                                size: 13,
                              ),
                            ),
                            Container(
                              width: 2,
                              height: 26,
                              color: AppColors.primaryDark,
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(width: 13),

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Accepted by provider',
                              style: TextStyle(
                                fontFamily: AppFonts.headingFont,
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: textColor,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              '19 Nov · 9:34 am',
                              style: TextStyle(
                                fontFamily: AppFonts.bodyFont,
                                fontSize: 12,
                                color: secondaryTextColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  // -------- STEP 3: PROVIDER ON THE WAY --------
                  // Row(
                  //   crossAxisAlignment: CrossAxisAlignment.start,
                  //   children: [
                  //     SizedBox(
                  //       width: 20,
                  //       child: Column(
                  //         children: [
                  //           Container(
                  //             width: 20,
                  //             height: 20,
                  //             decoration: const BoxDecoration(
                  //               color: AppColors.primaryDark,
                  //               shape: BoxShape.circle,
                  //             ),
                  //             child: const Icon(
                  //               Icons.location_on_outlined,
                  //               color: AppColors.white,
                  //               size: 14,
                  //             ),
                  //           ),
                  //           Container(width: 2, height: 26, color: borderColor),
                  //         ],
                  //       ),
                  //     ),

                  //     const SizedBox(width: 13),

                  //     Expanded(
                  //       child: Column(
                  //         crossAxisAlignment: CrossAxisAlignment.start,
                  //         children: [
                  //           Text(
                  //             'Provider on the way',
                  //             style: TextStyle(
                  //               fontFamily: AppFonts.headingFont,
                  //               fontSize: 14,
                  //               fontWeight: FontWeight.w700,
                  //               color: activeColor,
                  //             ),
                  //           ),
                  //           const SizedBox(height: 5),
                  //           Text(
                  //             'Arriving in 12 minutes',
                  //             style: TextStyle(
                  //               fontFamily: AppFonts.bodyFont,
                  //               fontSize: 12,
                  //               color: secondaryTextColor,
                  //             ),
                  //           ),
                  //         ],
                  //       ),
                  //     ),
                  //   ],
                  // ),

                  // -------- STEP 4: SERVICE IN PROGRESS --------
                  // Row(
                  //   crossAxisAlignment: CrossAxisAlignment.start,
                  //   children: [
                  //     SizedBox(
                  //       width: 20,
                  //       child: Column(
                  //         children: [
                  //           Container(
                  //             width: 20,
                  //             height: 20,
                  //             decoration: BoxDecoration(
                  //               color: pendingColor,
                  //               shape: BoxShape.circle,
                  //             ),
                  //             child: Icon(
                  //               Icons.access_time_rounded,
                  //               color: secondaryTextColor,
                  //               size: 13,
                  //             ),
                  //           ),
                  //           Container(width: 2, height: 26, color: borderColor),
                  //         ],
                  //       ),
                  //     ),

                  //     const SizedBox(width: 13),

                  //     Expanded(
                  //       child: Column(
                  //         crossAxisAlignment: CrossAxisAlignment.start,
                  //         children: [
                  //           Text(
                  //             'Service in progress',
                  //             style: TextStyle(
                  //               fontFamily: AppFonts.headingFont,
                  //               fontSize: 14,
                  //               fontWeight: FontWeight.w700,
                  //               color: secondaryTextColor,
                  //             ),
                  //           ),
                  //           const SizedBox(height: 5),
                  //           Text(
                  //             'Starts after your expert arrives',
                  //             style: TextStyle(
                  //               fontFamily: AppFonts.bodyFont,
                  //               fontSize: 12,
                  //               color: secondaryTextColor,
                  //             ),
                  //           ),
                  //         ],
                  //       ),
                  //     ),
                  //   ],
                  // ),

                  // -------- STEP 5: SERVICE COMPLETED --------
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: pendingColor,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.access_time_rounded,
                          color: secondaryTextColor,
                          size: 13,
                        ),
                      ),

                      const SizedBox(width: 13),

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Service completed',
                              style: TextStyle(
                                fontFamily: AppFonts.headingFont,
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: secondaryTextColor,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "You'll be notified when it's done",
                              style: TextStyle(
                                fontFamily: AppFonts.bodyFont,
                                fontSize: 12,
                                color: secondaryTextColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 32),

                  // ---------------- PROVIDER CARD ----------------
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 17,
                    ),
                    decoration: BoxDecoration(
                      color: surfaceColor,
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(color: borderColor),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.plumbing_outlined,
                          color: activeColor,
                          size: 26,
                        ),

                        const SizedBox(width: 13),

                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Greenline Plumbing',
                                style: TextStyle(
                                  fontFamily: AppFonts.headingFont,
                                  fontSize: isSmall ? 13 : 14,
                                  fontWeight: FontWeight.w700,
                                  color: textColor,
                                ),
                              ),

                              const SizedBox(height: 6),

                              Text(
                                'Verified partner · ★ 4.9',
                                style: TextStyle(
                                  fontFamily: AppFonts.bodyFont,
                                  fontSize: isSmall ? 11 : 12,
                                  color: secondaryTextColor,
                                ),
                              ),
                            ],
                          ),
                        ),

                        IconButton(
                          onPressed: () {
                            // Add provider call functionality.
                          },
                          icon: Icon(
                            Icons.call_outlined,
                            color: activeColor,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Rate Your Service Button
                  const SizedBox(height: 16),
                  Obx(
                    () => trackBookingController.review.value
                        ? SizedBox(
                            width: double.infinity,
                            height: 52,
                            child: ElevatedButton.icon(
                              onPressed: () {
                                Get.to(() => const RateYourServiceScreen());
                              },
                              icon: const Icon(Icons.star_rounded, size: 20),
                              label: const Text(
                                'Leave a Review',
                                style: TextStyle(
                                  fontFamily: AppFonts.headingFont,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.primaryDark,
                                foregroundColor: AppColors.white,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(14),
                                ),
                              ),
                            ),
                          )
                        : const SizedBox.shrink(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
