import 'package:flutter/material.dart';
import 'package:fixify/constant/colors.dart';

class BookingRequestScreen extends StatelessWidget {
  const BookingRequestScreen({super.key});

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    double horizontalPadding =
        width > 600 ? (width - 550) / 2 : width * 0.06;

    // Check current theme
    bool isDark =
        Theme.of(context).brightness == Brightness.dark;

    // Theme colors
    Color background = isDark
        ? AppColors.darkBackground
        : AppColors.lightBackground;

    Color surface = isDark
        ? AppColors.darkSurface
        : AppColors.lightSurface;

    Color textPrimary = isDark
        ? AppColors.darkTextPrimary
        : AppColors.lightTextPrimary;

    Color textSecondary = isDark
        ? AppColors.darkTextSecondary
        : AppColors.lightTextSecondary;

    Color softColor = isDark
        ? AppColors.darkCard
        : AppColors.mint;

    Color actionColor = isDark
        ? AppColors.primaryLight
        : AppColors.primaryDark;

    return Scaffold(
      backgroundColor: background,

      body: SafeArea(
        bottom: false,

        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: horizontalPadding,
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

                      // =========================
                      // NEW REQUEST AND TIMER
                      // =========================

                      Row(
                        mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                        children: [

                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 8,
                            ),
                            decoration: BoxDecoration(
                              color: softColor,
                              borderRadius:
                                  BorderRadius.circular(8),
                            ),

                            child: Row(
                              children: [

                                CircleAvatar(
                                  radius: 4,
                                  backgroundColor: actionColor,
                                ),

                                const SizedBox(width: 6),

                                Text(
                                  "NEW REQUEST",
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600,
                                    color: actionColor,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(width: 8),

                          const Text(
                            "Respond in 04:32",
                            style: TextStyle(
                              fontSize: 11,
                              color: AppColors.error,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: height * 0.035),

                      // =========================
                      // BOOKING TITLE
                      // =========================

                      Text(
                        "Tap & leak repair",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: textPrimary,
                        ),
                      ),

                      const SizedBox(height: 8),

                      Text(
                        "Booking #KM2048 · Aarav Sharma",
                        style: TextStyle(
                          fontSize: 13,
                          color: textSecondary,
                        ),
                      ),

                      SizedBox(height: height * 0.03),

                      // =========================
                      // BOOKING DETAILS CARD
                      // =========================

                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(18),
                        decoration: BoxDecoration(
                          color: surface,
                          borderRadius:
                              BorderRadius.circular(18),
                        ),

                        child: Column(
                          crossAxisAlignment:
                              CrossAxisAlignment.start,
                          children: [

                            // Booking date and time
                            Row(
                              crossAxisAlignment:
                                  CrossAxisAlignment.start,
                              children: [

                                Icon(
                                  Icons.calendar_today_outlined,
                                  color: actionColor,
                                  size: 20,
                                ),

                                const SizedBox(width: 14),

                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [

                                      Text(
                                        "Thu, 19 Nov · 11 am–1 pm",
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontWeight:
                                              FontWeight.w600,
                                          color: textPrimary,
                                        ),
                                      ),

                                      const SizedBox(height: 8),

                                      Text(
                                        "2-hour service window",
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

                            const SizedBox(height: 35),

                            // Customer address
                            Row(
                              crossAxisAlignment:
                                  CrossAxisAlignment.start,
                              children: [

                                Icon(
                                  Icons.location_on_outlined,
                                  color: actionColor,
                                  size: 23,
                                ),

                                const SizedBox(width: 12),

                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [

                                      Text(
                                        "42, 12th Main, Indiranagar",
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontWeight:
                                              FontWeight.w600,
                                          color: textPrimary,
                                        ),
                                      ),

                                      const SizedBox(height: 8),

                                      Text(
                                        "Apartment 302 · 2.1 km away",
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

                            const SizedBox(height: 30),

                            // Customer verification
                            Text(
                              "Verified customer · Phone number confirmed",
                              style: TextStyle(
                                fontSize: 11,
                                color: actionColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: height * 0.035),

                      // =========================
                      // CUSTOMER NOTE
                      // =========================

                      Text(
                        "Customer’s note",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: textPrimary,
                        ),
                      ),

                      const SizedBox(height: 12),

                      Text(
                        "“Kitchen tap has been leaking since yesterday. "
                        "Please check the washer and water pressure.”",
                        style: TextStyle(
                          fontSize: 13,
                          height: 1.5,
                          color: textSecondary,
                        ),
                      ),

                      SizedBox(height: height * 0.04),

                      // =========================
                      // SCHEDULING STATUS
                      // =========================

                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: softColor,
                          borderRadius:
                              BorderRadius.circular(13),
                        ),

                        child: Row(
                          children: [

                            Icon(
                              Icons.check,
                              color: actionColor,
                              size: 22,
                            ),

                            const SizedBox(width: 12),

                            Expanded(
                              child: Column(
                                crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                children: [

                                  Text(
                                    "No scheduling conflicts",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: actionColor,
                                      fontWeight:
                                          FontWeight.w500,
                                    ),
                                  ),

                                  const SizedBox(height: 4),

                                  Text(
                                    "Accepting will reserve this time slot.",
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: actionColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),

              // =========================
              // REJECT AND ACCEPT BUTTONS
              // =========================

              const SizedBox(height: 10),

              Row(
                children: [

                  // Reject booking button
                  Expanded(
                    flex: 2,

                    child: SizedBox(
                      height: 53,

                      child: ElevatedButton(
                        onPressed: () {
                          // Reject booking logic
                        },

                        style: ElevatedButton.styleFrom(
                          backgroundColor: surface,
                          foregroundColor: actionColor,
                          elevation: 0,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(14),
                          ),
                        ),

                        child: Row(
                          children: [

                            Expanded(
                              child: Text(
                                "Reject",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: actionColor,
                                ),
                              ),
                            ),

                            Icon(
                              Icons.arrow_forward,
                              size: 19,
                              color: actionColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(width: 12),

                  // Accept booking button
                  Expanded(
                    flex: 3,

                    child: SizedBox(
                      height: 53,

                      child: ElevatedButton(
                        onPressed: () {
                          // Accept booking logic
                        },

                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              AppColors.primaryDark,
                          foregroundColor: AppColors.white,
                          elevation: 0,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(14),
                          ),
                        ),

                        child: const Row(
                          children: [

                            Expanded(
                              child: Text(
                                "Accept booking",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.white,
                                ),
                              ),
                            ),

                            SizedBox(width: 4),

                            Icon(
                              Icons.arrow_forward,
                              size: 20,
                              color: AppColors.mint,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

      // =========================
      // BOTTOM NAVIGATION BAR
      // =========================

      bottomNavigationBar: Container(
        color: surface,

        child: SafeArea(
          top: false,

          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: horizontalPadding,
              vertical: 8,
            ),

            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
              children: [

                // Home tab
                GestureDetector(
                  onTap: () {
                    // Navigate to provider dashboard
                  },

                  child: SizedBox(
                    width: 70,

                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [

                        Icon(
                          Icons.home_outlined,
                          color: textSecondary,
                          size: 23,
                        ),

                        const SizedBox(height: 5),

                        Text(
                          "Home",
                          style: TextStyle(
                            fontSize: 11,
                            color: textSecondary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // Requests tab (Selected)
                GestureDetector(
                  onTap: () {
                    // Already on request screen
                  },

                  child: Container(
                    width: 70,
                    padding: const EdgeInsets.symmetric(
                      vertical: 9,
                    ),
                    decoration: BoxDecoration(
                      color: softColor,
                      borderRadius:
                          BorderRadius.circular(13),
                    ),

                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [

                        Icon(
                          Icons.calendar_today_outlined,
                          color: actionColor,
                          size: 21,
                        ),

                        const SizedBox(height: 5),

                        Text(
                          "Requests",
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                            color: actionColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // Profile tab
                GestureDetector(
                  onTap: () {
                    // Navigate to provider profile
                  },

                  child: SizedBox(
                    width: 70,

                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [

                        Icon(
                          Icons.person_outline,
                          color: textSecondary,
                          size: 23,
                        ),

                        const SizedBox(height: 5),

                        Text(
                          "Profile",
                          style: TextStyle(
                            fontSize: 11,
                            color: textSecondary,
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
      ),
    );
  }
}