
import 'package:flutter/material.dart';
import 'package:fixify/constant/colors.dart';

class TrackBookingScreen extends StatelessWidget {
  const TrackBookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double width = size.width;

    final bool isSmall = width < 360;

    final double horizontalPadding =
        (width * 0.06).clamp(16.0, 28.0).toDouble();

    // Figma-specific colors
    const Color darkGreen = Color(0xFF165B46);
    const Color limeGreen = Color(0xFFDFF39A);
    const Color paleGreen = Color(0xFFEAF1EA);
    const Color mutedGreen = Color(0xFF82948A);
    const Color inactiveLine = Color(0xFFDDE7DE);

    return Scaffold(
      backgroundColor: AppColors.lightBackground,

      // ---------------- APP BAR ----------------
      appBar: AppBar(
        backgroundColor: AppColors.lightBackground,
        elevation: 0,
        scrolledUnderElevation: 0,
        centerTitle: false,
        titleSpacing: 0,
        leadingWidth: 44,
        leading: IconButton(
          onPressed: () => Navigator.maybePop(context),
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: darkGreen,
            size: 19,
          ),
        ),
        title: Text(
          'Track booking',
          style: TextStyle(
            fontSize: isSmall ? 18 : 20,
            fontWeight: FontWeight.w700,
            color: AppColors.lightTextPrimary,
          ),
        ),
      ),

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
                      color: darkGreen,
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
                            color: limeGreen,
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.circle,
                                size: 8,
                                color: darkGreen,
                              ),
                              SizedBox(width: 6),
                              Text(
                                'LIVE UPDATE',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700,
                                  color: darkGreen,
                                ),
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 17),

                        Text(
                          'Your expert is on the way',
                          style: TextStyle(
                            fontSize: isSmall ? 17 : 20,
                            fontWeight: FontWeight.w700,
                            color: AppColors.white,
                          ),
                        ),

                        const SizedBox(height: 8),

                        Text(
                          'Arriving at 11:05 am · Updated just now',
                          style: TextStyle(
                            fontSize: isSmall ? 10 : 12,
                            color: AppColors.white,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 23),

                  // -------- BOOKING REFERENCE --------
                  Text(
                    'Tap & leak repair  ·  #KM2048',
                    style: TextStyle(
                      fontSize: isSmall ? 12 : 13,
                      fontWeight: FontWeight.w600,
                      color: AppColors.lightTextPrimary,
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
                                color: darkGreen,
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
                              color: darkGreen,
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(width: 13),

                      Expanded(
                        child: Column(
                          crossAxisAlignment:
                              CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Booking confirmed',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w700,
                                color: AppColors.lightTextPrimary,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              '19 Nov · 9:30 am',
                              style: TextStyle(
                                fontSize: 11,
                                color: mutedGreen,
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
                                color: darkGreen,
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
                              color: darkGreen,
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(width: 13),

                      Expanded(
                        child: Column(
                          crossAxisAlignment:
                              CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Accepted by provider',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w700,
                                color: AppColors.lightTextPrimary,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              '19 Nov · 9:34 am',
                              style: TextStyle(
                                fontSize: 11,
                                color: mutedGreen,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  // -------- STEP 3: PROVIDER ON THE WAY --------
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
                                color: darkGreen,
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.location_on_outlined,
                                color: AppColors.white,
                                size: 14,
                              ),
                            ),
                            Container(
                              width: 2,
                              height: 26,
                              color: inactiveLine,
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(width: 13),

                      Expanded(
                        child: Column(
                          crossAxisAlignment:
                              CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Provider on the way',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w700,
                                color: darkGreen,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              'Arriving in 12 minutes',
                              style: TextStyle(
                                fontSize: 11,
                                color: mutedGreen,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  // -------- STEP 4: SERVICE IN PROGRESS --------
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
                                color: paleGreen,
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.access_time_rounded,
                                color: mutedGreen,
                                size: 13,
                              ),
                            ),
                            Container(
                              width: 2,
                              height: 26,
                              color: inactiveLine,
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(width: 13),

                      Expanded(
                        child: Column(
                          crossAxisAlignment:
                              CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Service in progress',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w700,
                                color: mutedGreen,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              'Starts after your expert arrives',
                              style: TextStyle(
                                fontSize: 11,
                                color: mutedGreen,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  // -------- STEP 5: SERVICE COMPLETED --------
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        decoration: const BoxDecoration(
                          color: paleGreen,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.access_time_rounded,
                          color: mutedGreen,
                          size: 13,
                        ),
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
                                fontSize: 13,
                                fontWeight: FontWeight.w700,
                                color: mutedGreen,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "You'll be notified when it's done",
                              style: TextStyle(
                                fontSize: 11,
                                color: mutedGreen,
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
                      color: AppColors.lightSurface,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.plumbing_outlined,
                          color: darkGreen,
                          size: 26,
                        ),

                        const SizedBox(width: 13),

                        Expanded(
                          child: Column(
                            crossAxisAlignment:
                                CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Greenline Plumbing',
                                style: TextStyle(
                                  fontSize: isSmall ? 12 : 14,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.lightTextPrimary,
                                ),
                              ),

                              const SizedBox(height: 6),

                              Text(
                                'Verified partner · ★ 4.9',
                                style: TextStyle(
                                  fontSize: isSmall ? 10 : 11,
                                  color: mutedGreen,
                                ),
                              ),
                            ],
                          ),
                        ),

                        IconButton(
                          onPressed: () {
                            // Add provider call functionality.
                          },
                          icon: const Icon(
                            Icons.call_outlined,
                            color: darkGreen,
                            size: 20,
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

      // ---------------- BOTTOM NAVIGATION BAR ----------------
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
