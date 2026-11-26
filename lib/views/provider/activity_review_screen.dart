import 'package:flutter/material.dart';
import 'package:fixify/constant/colors.dart';

class ActivityReviewsScreen extends StatelessWidget {
  const ActivityReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    // Responsive horizontal padding
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

    // Weekly chart data
    List<String> days = [
      "M", "T", "W", "T", "F", "S", "S"
    ];

    List<double> barHeights = [
      45, 68, 45, 90, 68, 45, 45
    ];

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
              // WEEKLY ACTIVITY CARD
              // ==============================

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: AppColors.primaryDark,
                  borderRadius: BorderRadius.circular(20),
                ),

                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text(
                      "THIS WEEK · 16–22 NOV",
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                        color: AppColors.mint,
                      ),
                    ),

                    SizedBox(height: 18),

                    Text(
                      "18 jobs",
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: AppColors.white,
                      ),
                    ),

                    SizedBox(height: 14),

                    Text(
                      "Completed this week · +18% vs last week",
                      style: TextStyle(
                        fontSize: 12,
                        color: AppColors.white,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: height * 0.025),

              // ==============================
              // WEEKLY CHART HEADING
              // ==============================

              Text(
                "Completed visits · daily",
                style: TextStyle(
                  fontSize: 12,
                  color: textSecondary,
                ),
              ),

              const SizedBox(height: 10),

              // ==============================
              // WEEKLY BAR CHART
              // ==============================

              SizedBox(
                height: 120,
                width: double.infinity,

                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: List.generate(
                    days.length,

                    (index) {
                      return Expanded(
                        child: Column(
                          mainAxisAlignment:
                              MainAxisAlignment.end,
                          children: [

                            // Chart bar
                            Container(
                              width: (width * 0.065)
                                  .clamp(15.0, 30.0)
                                  .toDouble(),

                              height: barHeights[index],

                              decoration: BoxDecoration(
                                color: index == 5
                                    ? AppColors.primaryDark
                                    : AppColors.primaryLight
                                        .withOpacity(0.25),

                                borderRadius:
                                    BorderRadius.circular(6),
                              ),
                            ),

                            const SizedBox(height: 12),

                            // Day name
                            Text(
                              days[index],
                              style: TextStyle(
                                fontSize: 11,
                                color: textSecondary,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),

              SizedBox(height: height * 0.04),

              // ==============================
              // CUSTOMER REVIEWS HEADING
              // ==============================

              Text(
                "What customers say",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                  color: textPrimary,
                ),
              ),

              const SizedBox(height: 16),

              // ==============================
              // OVERALL CUSTOMER RATING
              // ==============================

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: softColor,
                  borderRadius: BorderRadius.circular(15),
                ),

                child: Row(
                  children: [

                    // Rating number
                    Text(
                      "4.9",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: actionColor,
                      ),
                    ),

                    SizedBox(width: width > 350 ? 32 : 16),

                    // Stars and total reviews
                    Expanded(
                      child: Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start,
                        children: [

                          Row(
                            children: List.generate(
                              5,
                              (index) => Icon(
                                Icons.star,
                                size: 18,
                                color: actionColor,
                              ),
                            ),
                          ),

                          const SizedBox(height: 6),

                          Text(
                            "128 verified customer reviews",
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

              SizedBox(height: height * 0.022),

              // ==============================
              // CUSTOMER REVIEW CARD
              // ==============================

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: surface,
                  borderRadius: BorderRadius.circular(18),
                ),

                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: [

                    // Customer stars and name
                    Row(
                      children: [

                        Row(
                          children: List.generate(
                            5,
                            (index) => Icon(
                              Icons.star,
                              size: 14,
                              color: actionColor,
                            ),
                          ),
                        ),

                        const SizedBox(width: 12),

                        Text(
                          "Priya S.",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: actionColor,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 14),

                    // Customer review message
                    Text(
                      "“On time, tidy and fixed it in one visit.\n"
                      "Would happily book again!”",
                      style: TextStyle(
                        fontSize: 14,
                        height: 1.5,
                        color: textPrimary,
                      ),
                    ),

                    const SizedBox(height: 18),

                    // Review date and reply button
                    Row(
                      children: [

                        Expanded(
                          child: Text(
                            "Tap repair · 14 Nov",
                            style: TextStyle(
                              fontSize: 11,
                              color: textSecondary,
                            ),
                          ),
                        ),

                        GestureDetector(
                          onTap: () {
                            // Reply to customer review
                          },

                          child: Row(
                            children: [

                              Text(
                                "Reply to review",
                                style: TextStyle(
                                  fontSize: 11,
                                  color: textSecondary,
                                ),
                              ),

                              const SizedBox(width: 4),

                              Icon(
                                Icons.arrow_forward,
                                size: 13,
                                color: textSecondary,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),
            ],
          ),
        ),
      ),

      // ==============================
      // BOTTOM NAVIGATION BAR
      // ==============================

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

                // HOME TAB (SELECTED)
                GestureDetector(
                  onTap: () {
                    // Navigate to provider dashboard
                  },

                  child: Container(
                    width: 70,
                    padding: const EdgeInsets.symmetric(
                      vertical: 9,
                    ),
                    decoration: BoxDecoration(
                      color: softColor,
                      borderRadius: BorderRadius.circular(13),
                    ),

                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [

                        Icon(
                          Icons.home_outlined,
                          size: 23,
                          color: actionColor,
                        ),

                        const SizedBox(height: 5),

                        Text(
                          "Home",
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

                // REQUESTS TAB
                GestureDetector(
                  onTap: () {
                    // Navigate to booking requests
                  },

                  child: SizedBox(
                    width: 70,

                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [

                        Icon(
                          Icons.calendar_today_outlined,
                          size: 21,
                          color: textSecondary,
                        ),

                        const SizedBox(height: 5),

                        Text(
                          "Requests",
                          style: TextStyle(
                            fontSize: 11,
                            color: textSecondary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // PROFILE TAB
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
                          size: 23,
                          color: textSecondary,
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