
import 'package:flutter/material.dart';
import'package:fixify/constant/colors.dart';

class ProviderDetailsScreen extends StatelessWidget {
  const ProviderDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double width = size.width;

    final bool isSmall = width < 360;

    final double horizontalPadding =
        (width * 0.06).clamp(16.0, 28.0).toDouble();

    // Exact screenshot accent colors.
    const Color darkGreen = Color(0xFF165B46);
    const Color verifiedGreen = Color(0xFFDFF39A);

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
            size: 20,
            color: darkGreen,
          ),
        ),
        title: Text(
          'Provider details',
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
              padding: EdgeInsets.symmetric(
                horizontal: horizontalPadding,
                vertical: 14,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // -------- PROVIDER GREEN CARD --------
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(isSmall ? 17 : 20),
                    decoration: BoxDecoration(
                      color: darkGreen,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(
                              Icons.handyman_outlined,
                              color: verifiedGreen,
                              size: 26,
                            ),

                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 13,
                                vertical: 7,
                              ),
                              decoration: BoxDecoration(
                                color: verifiedGreen,
                                borderRadius:
                                    BorderRadius.circular(8),
                              ),
                              child: const Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.check,
                                    color: darkGreen,
                                    size: 14,
                                  ),
                                  SizedBox(width: 4),
                                  Text(
                                    'VERIFIED',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700,
                                      color: darkGreen,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 26),

                        Text(
                          'Greenline Plumbing',
                          style: TextStyle(
                            fontSize: isSmall ? 19 : 22,
                            fontWeight: FontWeight.w700,
                            color: AppColors.white,
                          ),
                        ),

                        const SizedBox(height: 9),

                        Row(
                          children: [
                            const Icon(
                              Icons.star_rounded,
                              color: AppColors.white,
                              size: 15,
                            ),
                            const SizedBox(width: 3),
                            Flexible(
                              child: Text(
                                '4.9 (128 reviews)  •  6 years of experience',
                                style: TextStyle(
                                  color: AppColors.white,
                                  fontSize: isSmall ? 10 : 12,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 14),
                      ],
                    ),
                  ),

                  const SizedBox(height: 16),

                  // -------- AVAILABILITY --------
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 9,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xFFEAF1EA),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Text(
                          'Available today',
                          style: TextStyle(
                            color: darkGreen,
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),

                      const SizedBox(width: 14),

                      Expanded(
                        child: Text(
                          '2.1 km away · Indiranagar',
                          style: TextStyle(
                            color: AppColors.lightTextSecondary,
                            fontSize: isSmall ? 10 : 12,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 22),

                  // -------- DESCRIPTION --------
                  Text(
                    'Reliable repairs. Zero stress.',
                    style: TextStyle(
                      fontSize: isSmall ? 17 : 19,
                      fontWeight: FontWeight.w700,
                      color: AppColors.lightTextPrimary,
                    ),
                  ),

                  const SizedBox(height: 9),

                  Text(
                    'Leak repairs, installations and everyday plumbing, '
                    'handled by trained, background-checked experts.',
                    style: TextStyle(
                      fontSize: isSmall ? 12 : 13,
                      height: 1.5,
                      color: AppColors.lightTextSecondary,
                    ),
                  ),

                  const SizedBox(height: 27),

                  // -------- SERVICES TITLE --------
                  Text(
                    'Services available',
                    style: TextStyle(
                      fontSize: isSmall ? 17 : 19,
                      fontWeight: FontWeight.w700,
                      color: AppColors.lightTextPrimary,
                    ),
                  ),

                  const SizedBox(height: 12),

                  // -------- SERVICE 1 --------
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 15,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.lightSurface,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Tap & leak repair',
                            style: TextStyle(
                              fontSize: isSmall ? 12 : 13,
                              color: AppColors.lightTextPrimary,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        const Text(
                          '60 min',
                          style: TextStyle(
                            fontSize: 12,
                            color: darkGreen,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 7),

                  // -------- SERVICE 2 --------
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 15,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.lightSurface,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Drain cleaning',
                            style: TextStyle(
                              fontSize: isSmall ? 12 : 13,
                              color: AppColors.lightTextPrimary,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        const Text(
                          '90 min',
                          style: TextStyle(
                            fontSize: 12,
                            color: darkGreen,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 7),

                  // -------- SERVICE 3 --------
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 15,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.lightSurface,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Bathroom fittings',
                            style: TextStyle(
                              fontSize: isSmall ? 12 : 13,
                              color: AppColors.lightTextPrimary,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        const Text(
                          '120 min',
                          style: TextStyle(
                            fontSize: 12,
                            color: darkGreen,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 24),

                  // -------- RATING / REVIEW --------
                  Text(
                    '★ 4.9 "On time, tidy and fixed it in one visit."',
                    style: TextStyle(
                      color: AppColors.lightTextPrimary,
                      fontSize: isSmall ? 11 : 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  const SizedBox(height: 10),

                  Text(
                    'Priya S. · Verified booking · 14 Nov',
                    style: TextStyle(
                      color: AppColors.lightTextSecondary,
                      fontSize: isSmall ? 10 : 11,
                    ),
                  ),

                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),

      // ---------------- BOTTOM AREA ----------------
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // -------- SELECT SERVICE BUTTON --------
          Container(
            width: double.infinity,
            color: AppColors.lightBackground,
            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 540),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(
                    horizontalPadding,
                    8,
                    horizontalPadding,
                    16,
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    height: 54,
                    child: ElevatedButton(
                      onPressed: () {
                        // Add service selection navigation here.
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: darkGreen,
                        foregroundColor: AppColors.white,
                        elevation: 0,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 17,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13),
                        ),
                      ),
                      child: const Row(
                        mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Select service',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_rounded,
                            size: 21,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),

          // -------- BOTTOM NAVIGATION BAR --------
          Container(
            color: AppColors.lightSurface,
            child: SafeArea(
              top: false,
              child: Center(
                heightFactor: 1,
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 540),
                  child: SizedBox(
                    height: 74,
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

                        // EXPLORE - SELECTED
                        Expanded(
                          child: Center(
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 17,
                                vertical: 9,
                              ),
                              decoration: BoxDecoration(
                                color: const Color(0xFFEAF1EA),
                                borderRadius:
                                    BorderRadius.circular(12),
                              ),
                              child: const Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.grid_view_rounded,
                                    size: 22,
                                    color: darkGreen,
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    'Explore',
                                    style: TextStyle(
                                      color: darkGreen,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                        // BOOKINGS
                        Expanded(
                          child: Column(
                            mainAxisAlignment:
                                MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.calendar_month_outlined,
                                size: 22,
                                color: AppColors.lightTextSecondary,
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
        ],
      ),
    );
  }
}
