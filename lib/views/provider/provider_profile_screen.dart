import 'package:flutter/material.dart';
import 'package:fixify/constant/colors.dart';

class ProviderProfileScreen extends StatelessWidget {
  const ProviderProfileScreen({super.key});

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

        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: horizontalPadding,
            vertical: height * 0.025,
          ),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // ==============================
              // PROVIDER PROFILE CARD
              // ==============================

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: AppColors.primaryDark,
                  borderRadius: BorderRadius.circular(18),
                ),

                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: [

                    Row(
                      children: [

                        const Icon(
                          Icons.build_outlined,
                          size: 26,
                          color: AppColors.mint,
                        ),

                        const SizedBox(width: 16),

                        const Expanded(
                          child: Column(
                            crossAxisAlignment:
                                CrossAxisAlignment.start,
                            children: [

                              Text(
                                "Greenline Plumbing",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.white,
                                ),
                              ),

                              SizedBox(height: 6),

                              Text(
                                "Rajesh Kumar · Verified partner",
                                style: TextStyle(
                                  fontSize: 11,
                                  color: AppColors.mint,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 20),

                    // Edit profile button
                    GestureDetector(
                      onTap: () {
                        // Navigate to edit profile
                      },

                      child: const Row(
                        children: [

                          Text(
                            "Edit profile",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: AppColors.mint,
                            ),
                          ),

                          SizedBox(width: 6),

                          Icon(
                            Icons.arrow_forward,
                            size: 15,
                            color: AppColors.mint,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: height * 0.025),

              // ==============================
              // SERVICES SECTION HEADING
              // ==============================

              Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                children: [

                  Expanded(
                    child: Text(
                      "Services you offer",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: textPrimary,
                      ),
                    ),
                  ),

                  TextButton(
                    onPressed: () {
                      // Add new service
                    },

                    child: Text(
                      "+ Add",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: actionColor,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 6),

              // ==============================
              // SERVICE 1 - TAP & LEAK REPAIR
              // ==============================

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: surface,
                  borderRadius: BorderRadius.circular(15),
                ),

                child: Row(
                  children: [

                    Expanded(
                      child: Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start,
                        children: [

                          Text(
                            "Tap & leak repair",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: textPrimary,
                            ),
                          ),

                          const SizedBox(height: 9),

                          Text(
                            "60 min · Repair & inspection",
                            style: TextStyle(
                              fontSize: 11,
                              color: textSecondary,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(width: 10),

                    GestureDetector(
                      onTap: () {
                        // Edit tap and leak repair
                      },

                      child: Text(
                        "Edit",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: actionColor,
                        ),
                      ),
                    ),

                    const SizedBox(width: 10),
                  ],
                ),
              ),

              const SizedBox(height: 13),

              // ==============================
              // SERVICE 2 - DRAIN CLEANING
              // ==============================

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: surface,
                  borderRadius: BorderRadius.circular(15),
                ),

                child: Row(
                  children: [

                    Expanded(
                      child: Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start,
                        children: [

                          Text(
                            "Drain cleaning",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: textPrimary,
                            ),
                          ),

                          const SizedBox(height: 9),

                          Text(
                            "90 min · Drain maintenance",
                            style: TextStyle(
                              fontSize: 11,
                              color: textSecondary,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(width: 10),

                    GestureDetector(
                      onTap: () {
                        // Edit drain cleaning
                      },

                      child: Text(
                        "Edit",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: actionColor,
                        ),
                      ),
                    ),

                    const SizedBox(width: 10),
                  ],
                ),
              ),

              const SizedBox(height: 13),

              // ==============================
              // SERVICE 3 - BATHROOM FITTINGS
              // ==============================

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: surface,
                  borderRadius: BorderRadius.circular(15),
                ),

                child: Row(
                  children: [

                    Expanded(
                      child: Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start,
                        children: [

                          Text(
                            "Bathroom fittings",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: textPrimary,
                            ),
                          ),

                          const SizedBox(height: 9),

                          Text(
                            "120 min · Installation service",
                            style: TextStyle(
                              fontSize: 11,
                              color: textSecondary,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(width: 10),

                    GestureDetector(
                      onTap: () {
                        // Edit bathroom fittings
                      },

                      child: Text(
                        "Edit",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: actionColor,
                        ),
                      ),
                    ),

                    const SizedBox(width: 10),
                  ],
                ),
              ),

              SizedBox(height: height * 0.04),

              // ==============================
              // SERVICE AREA AND EXPERIENCE
              // ==============================

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: softColor,
                  borderRadius: BorderRadius.circular(15),
                ),

                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: [

                    Text(
                      "Service area & experience",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: actionColor,
                      ),
                    ),

                    const SizedBox(height: 10),

                    Text(
                      "Indiranagar, Bengaluru · Within 5 km",
                      style: TextStyle(
                        fontSize: 11,
                        color: actionColor,
                      ),
                    ),

                    const SizedBox(height: 4),

                    Text(
                      "6 years in plumbing · English, Hindi, Kannada",
                      style: TextStyle(
                        fontSize: 11,
                        height: 1.4,
                        color: actionColor,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: height * 0.045),

              // ==============================
              // LOGOUT BUTTON
              // ==============================

              GestureDetector(
                onTap: () {
                  // Logout logic
                },

                child: const Row(
                  children: [

                    Icon(
                      Icons.logout,
                      size: 21,
                      color: AppColors.error,
                    ),

                    SizedBox(width: 12),

                    Expanded(
                      child: Text(
                        "Log out of your account",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColors.error,
                        ),
                      ),
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

                // HOME TAB
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
                          size: 23,
                          color: textSecondary,
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

                // PROFILE TAB (SELECTED)
                GestureDetector(
                  onTap: () {
                    // Already on profile screen
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
                          Icons.person_outline,
                          size: 23,
                          color: actionColor,
                        ),

                        const SizedBox(height: 5),

                        Text(
                          "Profile",
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}