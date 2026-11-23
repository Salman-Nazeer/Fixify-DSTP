
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import'package:fixify/constant/colors.dart';


class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double width = size.width;

    final bool isSmall = width < 360;

    final double horizontalPadding =
        (width * 0.055).clamp(16.0, 28.0).toDouble();

    // Figma-specific colors
    const Color darkGreen = Color(0xFF165B46);
    const Color paleGreen = Color(0xFFEAF1EA);
    const Color mutedGreen = Color(0xFF82948A);

    return Scaffold(
      backgroundColor: AppColors.lightBackground,

      // ---------------- APP BAR ----------------
      appBar: AppBar(
        backgroundColor: AppColors.lightBackground,
        elevation: 0,
        scrolledUnderElevation: 0,
        centerTitle: false,
        titleSpacing: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: AppColors.lightBackground,
          statusBarIconBrightness: Brightness.dark,
        ),
        leadingWidth: 48,
        leading: IconButton(
          onPressed: () => Navigator.maybePop(context),
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 19,
            color: darkGreen,
          ),
        ),
        title: Text(
          'Notifications',
          style: TextStyle(
            fontSize: isSmall ? 18 : 20,
            fontWeight: FontWeight.w700,
            color: AppColors.lightTextPrimary,
          ),
        ),
      ),

      // ---------------- SCREEN BODY ----------------
      body: SingleChildScrollView(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 540),
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                horizontalPadding,
                12,
                horizontalPadding,
                30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // -------- MAIN HEADING --------
                  Text(
                    'Your latest updates',
                    style: TextStyle(
                      fontSize: isSmall ? 19 : 22,
                      fontWeight: FontWeight.w700,
                      color: AppColors.lightTextPrimary,
                    ),
                  ),

                  const SizedBox(height: 9),

                  Text(
                    'All caught up, wherever you are.',
                    style: TextStyle(
                      fontSize: isSmall ? 11 : 12,
                      color: AppColors.lightTextSecondary,
                    ),
                  ),

                  const SizedBox(height: 24),

                  // ---------------- NOTIFICATION 1 ----------------
                  // ON THE WAY
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 14,
                    ),
                    decoration: BoxDecoration(
                      color: paleGreen,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.location_on_outlined,
                          color: darkGreen,
                          size: 23,
                        ),

                        const SizedBox(width: 13),

                        Expanded(
                          child: Column(
                            crossAxisAlignment:
                                CrossAxisAlignment.start,
                            children: [
                              Text(
                                'On the way',
                                style: TextStyle(
                                  fontSize: isSmall ? 12 : 14,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.lightTextPrimary,
                                ),
                              ),

                              const SizedBox(height: 7),

                              Text(
                                'Greenline Plumbing arrives in 12 minutes.',
                                style: TextStyle(
                                  fontSize: isSmall ? 10 : 12,
                                  color: AppColors.lightTextSecondary,
                                  height: 1.4,
                                ),
                              ),

                              const SizedBox(height: 10),

                              const Text(
                                'Just now',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: mutedGreen,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 9),

                  // ---------------- NOTIFICATION 2 ----------------
                  // BOOKING ACCEPTED
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 14,
                    ),
                    decoration: BoxDecoration(
                      color: paleGreen,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.check_rounded,
                          color: darkGreen,
                          size: 23,
                        ),

                        const SizedBox(width: 13),

                        Expanded(
                          child: Column(
                            crossAxisAlignment:
                                CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Booking accepted',
                                style: TextStyle(
                                  fontSize: isSmall ? 12 : 14,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.lightTextPrimary,
                                ),
                              ),

                              const SizedBox(height: 7),

                              Text(
                                'Your plumbing visit is confirmed for 11 am.',
                                style: TextStyle(
                                  fontSize: isSmall ? 10 : 12,
                                  color: AppColors.lightTextSecondary,
                                  height: 1.4,
                                ),
                              ),

                              const SizedBox(height: 10),

                              const Text(
                                '1 hr ago',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: mutedGreen,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 9),

                  // ---------------- NOTIFICATION 3 ----------------
                  // BOOKING RESCHEDULED
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 14,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.lightSurface,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.check_rounded,
                          color: darkGreen,
                          size: 23,
                        ),

                        const SizedBox(width: 13),

                        Expanded(
                          child: Column(
                            crossAxisAlignment:
                                CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Booking rescheduled',
                                style: TextStyle(
                                  fontSize: isSmall ? 12 : 14,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.lightTextPrimary,
                                ),
                              ),

                              const SizedBox(height: 7),

                              Text(
                                '#KM2041 moved to 20 Nov, 9–11 am.',
                                style: TextStyle(
                                  fontSize: isSmall ? 10 : 12,
                                  color: AppColors.lightTextSecondary,
                                  height: 1.4,
                                ),
                              ),

                              const SizedBox(height: 10),

                              const Text(
                                'Yesterday',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: mutedGreen,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 9),

                  // ---------------- NOTIFICATION 4 ----------------
                  // SERVICE COMPLETED
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 14,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.lightSurface,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.star_border_rounded,
                          color: darkGreen,
                          size: 23,
                        ),

                        const SizedBox(width: 13),

                        Expanded(
                          child: Column(
                            crossAxisAlignment:
                                CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Service completed',
                                style: TextStyle(
                                  fontSize: isSmall ? 12 : 14,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.lightTextPrimary,
                                ),
                              ),

                              const SizedBox(height: 7),

                              Text(
                                'Your home cleaning is done. Leave a review.',
                                style: TextStyle(
                                  fontSize: isSmall ? 10 : 12,
                                  color: AppColors.lightTextSecondary,
                                  height: 1.4,
                                ),
                              ),

                              const SizedBox(height: 10),

                              const Text(
                                'Yesterday',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: mutedGreen,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 9),

                  // ---------------- NOTIFICATION 5 ----------------
                  // BOOKING REJECTED
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 14,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.lightSurface,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.calendar_today_outlined,
                          color: darkGreen,
                          size: 22,
                        ),

                        const SizedBox(width: 13),

                        Expanded(
                          child: Column(
                            crossAxisAlignment:
                                CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Booking rejected',
                                style: TextStyle(
                                  fontSize: isSmall ? 12 : 14,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.lightTextPrimary,
                                ),
                              ),

                              const SizedBox(height: 7),

                              Text(
                                'No slot available. Find another AC expert.',
                                style: TextStyle(
                                  fontSize: isSmall ? 10 : 12,
                                  color: AppColors.lightTextSecondary,
                                  height: 1.4,
                                ),
                              ),

                              const SizedBox(height: 10),

                              const Text(
                                '16 Nov',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: mutedGreen,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 9),

                  // ---------------- NOTIFICATION 6 ----------------
                  // BOOKING CANCELLED
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 14,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.lightSurface,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.calendar_today_outlined,
                          color: darkGreen,
                          size: 22,
                        ),

                        const SizedBox(width: 13),

                        Expanded(
                          child: Column(
                            crossAxisAlignment:
                                CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Booking cancelled',
                                style: TextStyle(
                                  fontSize: isSmall ? 12 : 14,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.lightTextPrimary,
                                ),
                              ),

                              const SizedBox(height: 7),

                              Text(
                                '#KM2035 cancelled. View booking details.',
                                style: TextStyle(
                                  fontSize: isSmall ? 10 : 12,
                                  color: AppColors.lightTextSecondary,
                                  height: 1.4,
                                ),
                              ),

                              const SizedBox(height: 10),

                              const Text(
                                '15 Nov',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: mutedGreen,
                                ),
                              ),
                            ],
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
                    // -------- HOME - SELECTED --------
                    Expanded(
                      child: Center(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 14,
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
                                Icons.home_outlined,
                                color: darkGreen,
                                size: 23,
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Home',
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

                    // -------- EXPLORE --------
                    Expanded(
                      child: Column(
                        mainAxisAlignment:
                            MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.grid_view_outlined,
                            color: AppColors.lightTextSecondary,
                            size: 23,
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

                    // -------- BOOKINGS --------
                    Expanded(
                      child: Column(
                        mainAxisAlignment:
                            MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.calendar_month_outlined,
                            color: AppColors.lightTextSecondary,
                            size: 23,
                          ),
                          const SizedBox(height: 5),
                          Text(
                            'Bookings',
                            style: TextStyle(
                              fontSize: 10,
                              color: AppColors.lightTextSecondary,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // -------- ACCOUNT --------
                    Expanded(
                      child: Column(
                        mainAxisAlignment:
                            MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.person_outline_rounded,
                            color: AppColors.lightTextSecondary,
                            size: 23,
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
