
import 'package:flutter/material.dart';
import'package:fixify/constant/colors.dart';

class MyBookingsScreen extends StatelessWidget {
  const MyBookingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double width = size.width;

    final bool isSmall = width < 360;

    final double horizontalPadding =
        (width * 0.055).clamp(16.0, 26.0).toDouble();

    // Extra colors to match the Figma screenshot.
    const Color darkGreen = Color(0xFF165B46);
    const Color paleGreen = Color(0xFFEAF1E9);
    const Color mutedGreen = Color(0xFF60776D);

    return Scaffold(
      backgroundColor: AppColors.lightBackground,

      // ---------------- APP BAR ----------------
      appBar: AppBar(
        backgroundColor: AppColors.lightBackground,
        elevation: 0,
        scrolledUnderElevation: 0,
        centerTitle: false,
        titleSpacing: 0,
        leading: IconButton(
          onPressed: () => Navigator.maybePop(context),
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 19,
            color: darkGreen,
          ),
        ),
        title: Text(
          'My bookings',
          style: TextStyle(
            fontSize: isSmall ? 18 : 20,
            fontWeight: FontWeight.w700,
            color: AppColors.lightTextPrimary,
          ),
        ),
      ),

      // ---------------- SCREEN BODY ----------------
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 540),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                horizontalPadding,
                14,
                horizontalPadding,
                28,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // ---------------- TOP TABS ----------------
                  Row(
                    children: [
                      // UPCOMING
                      Expanded(
                        child: Container(
                          height: 34,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: darkGreen,
                            borderRadius: BorderRadius.circular(9),
                          ),
                          child: Text(
                            'Upcoming (2)',
                            style: TextStyle(
                              fontSize: isSmall ? 10 : 12,
                              fontWeight: FontWeight.w600,
                              color: AppColors.white,
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(width: 8),

                      // COMPLETED
                      Expanded(
                        child: Container(
                          height: 34,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: AppColors.lightSurface,
                            borderRadius: BorderRadius.circular(9),
                          ),
                          child: Text(
                            'Completed',
                            style: TextStyle(
                              fontSize: isSmall ? 10 : 12,
                              fontWeight: FontWeight.w600,
                              color: darkGreen,
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(width: 8),

                      // CANCELLED
                      Expanded(
                        child: Container(
                          height: 34,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: AppColors.lightSurface,
                            borderRadius: BorderRadius.circular(9),
                          ),
                          child: Text(
                            'Cancelled',
                            style: TextStyle(
                              fontSize: isSmall ? 10 : 12,
                              fontWeight: FontWeight.w600,
                              color: darkGreen,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 29),

                  // ---------------- SECTION TITLE ----------------
                  Text(
                    'Your next visit',
                    style: TextStyle(
                      fontSize: isSmall ? 19 : 22,
                      fontWeight: FontWeight.w700,
                      color: AppColors.lightTextPrimary,
                    ),
                  ),

                  const SizedBox(height: 14),

                  // ---------------- FIRST BOOKING CARD ----------------
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(isSmall ? 16 : 18),
                    decoration: BoxDecoration(
                      color: AppColors.lightCard,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // STATUS AND BOOKING ID
                        Row(
                          mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 13,
                                vertical: 8,
                              ),
                              decoration: BoxDecoration(
                                color: paleGreen,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Text(
                                'Confirmed',
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w600,
                                  color: darkGreen,
                                ),
                              ),
                            ),

                            const Text(
                              '#KM2048',
                              style: TextStyle(
                                fontSize: 11,
                                color: mutedGreen,
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 23),

                        // SERVICE NAME
                        Text(
                          'Tap & leak repair',
                          style: TextStyle(
                            fontSize: isSmall ? 17 : 19,
                            fontWeight: FontWeight.w700,
                            color: AppColors.lightTextPrimary,
                          ),
                        ),

                        const SizedBox(height: 7),

                        // PROVIDER
                        Text(
                          'Greenline Plumbing · Verified partner',
                          style: TextStyle(
                            color: AppColors.lightTextSecondary,
                            fontSize: isSmall ? 11 : 13,
                          ),
                          maxLines: 2,
                        ),

                        const SizedBox(height: 19),

                        // DATE AND TIME
                        const Row(
                          children: [
                            Icon(
                              Icons.calendar_today_outlined,
                              size: 19,
                              color: darkGreen,
                            ),
                            SizedBox(width: 12),
                            Expanded(
                              child: Text(
                                '19 Nov · 11 am–1 pm',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  color: darkGreen,
                                ),
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 24),

                        // TRACK BOOKING BUTTON
                        SizedBox(
                          width: double.infinity,
                          height: 48,
                          child: ElevatedButton(
                            onPressed: () {
                              // Add track booking navigation here.
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: darkGreen,
                              foregroundColor: AppColors.white,
                              elevation: 0,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 15,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: const Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Track booking',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward_rounded,
                                  size: 21,
                                  color: Color(0xFFDFF39A),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // ---------------- BOOKING ACTIONS ----------------
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 4,
                      vertical: 11,
                    ),
                    child: Row(
                      mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {
                            // Add reschedule navigation here.
                          },
                          style: TextButton.styleFrom(
                            foregroundColor: darkGreen,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 2,
                              vertical: 7,
                            ),
                          ),
                          child: const Text(
                            'Reschedule',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),

                        TextButton(
                          onPressed: () {
                            // Add cancellation logic here.
                          },
                          style: TextButton.styleFrom(
                            foregroundColor: AppColors.error,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 2,
                              vertical: 7,
                            ),
                          ),
                          child: const Text(
                            'Cancel booking',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // ---------------- SECOND BOOKING CARD ----------------
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(isSmall ? 16 : 18),
                    decoration: BoxDecoration(
                      color: AppColors.lightCard,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // STATUS
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 13,
                            vertical: 8,
                          ),
                          decoration: BoxDecoration(
                            color: paleGreen,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Text(
                            'Awaiting acceptance',
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w600,
                              color: darkGreen,
                            ),
                          ),
                        ),

                        const SizedBox(height: 22),

                        // SERVICE TITLE
                        Text(
                          'AC deep clean',
                          style: TextStyle(
                            fontSize: isSmall ? 17 : 19,
                            fontWeight: FontWeight.w700,
                            color: AppColors.lightTextPrimary,
                          ),
                        ),

                        const SizedBox(height: 8),

                        Text(
                          'CoolAir Care · 21 Nov · 9–11 am',
                          style: TextStyle(
                            fontSize: isSmall ? 11 : 13,
                            color: AppColors.lightTextSecondary,
                          ),
                        ),

                        const SizedBox(height: 13),
                      ],
                    ),
                  ),

                  const SizedBox(height: 29),

                  // ---------------- INFORMATION BOX ----------------
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 18,
                      vertical: 17,
                    ),
                    decoration: BoxDecoration(
                      color: paleGreen,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Plans changed? No problem.',
                          style: TextStyle(
                            fontSize: isSmall ? 13 : 15,
                            fontWeight: FontWeight.w700,
                            color: darkGreen,
                          ),
                        ),

                        const SizedBox(height: 10),

                        Text(
                          'Cancel or reschedule up to 2 hours before.',
                          style: TextStyle(
                            fontSize: isSmall ? 11 : 12,
                            height: 1.4,
                            color: darkGreen,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),

      // ---------------- BOTTOM NAVIGATION ----------------
      bottomNavigationBar: Container(
        color: AppColors.lightSurface,
        child: SafeArea(
          top: false,
          child: Center(
            heightFactor: 1,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 540),
              child: SizedBox(
                height: 72,
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceEvenly,
                  children: [
                    // HOME
                    Expanded(
                      child: Column(
                        mainAxisAlignment:
                            MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.home_outlined,
                            size: 23,
                            color: AppColors.lightTextSecondary,
                          ),
                          const SizedBox(height: 5),
                          Text(
                            'Home',
                            style: TextStyle(
                              fontSize: 10,
                              color: AppColors.lightTextSecondary,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // EXPLORE
                    Expanded(
                      child: Column(
                        mainAxisAlignment:
                            MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.grid_view_outlined,
                            size: 23,
                            color: AppColors.lightTextSecondary,
                          ),
                          const SizedBox(height: 5),
                          Text(
                            'Explore',
                            style: TextStyle(
                              fontSize: 10,
                              color: AppColors.lightTextSecondary,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // BOOKINGS - SELECTED
                    Expanded(
                      child: Center(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 9,
                          ),
                          decoration: BoxDecoration(
                            color: paleGreen,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.calendar_month_outlined,
                                size: 23,
                                color: darkGreen,
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Bookings',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700,
                                  color: darkGreen,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    // ACCOUNT
                    Expanded(
                      child: Column(
                        mainAxisAlignment:
                            MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.person_outline_rounded,
                            size: 23,
                            color: AppColors.lightTextSecondary,
                          ),
                          const SizedBox(height: 5),
                          Text(
                            'Account',
                            style: TextStyle(
                              fontSize: 10,
                              color: AppColors.lightTextSecondary,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
