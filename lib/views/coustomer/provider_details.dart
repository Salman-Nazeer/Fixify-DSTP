import 'package:fixify/constant/colors.dart';
import 'package:fixify/constant/fontsapp.dart';
import 'package:flutter/material.dart';

class ProviderDetailsScreen extends StatelessWidget {
  const ProviderDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final scale = (size.width / 390).clamp(0.85, 1.15).toDouble();

    final services = [
      {'name': 'Tap & leak repair'},
      {'name': 'Drain cleaning'},
      {'name': 'Bathroom fittings'},
    ];

    return Scaffold(
      backgroundColor: AppColors.lightBackground,

      // APP BAR
      appBar: AppBar(
        backgroundColor: AppColors.lightBackground,
        centerTitle: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_outlined,
            color: AppColors.primaryDark,
          ),
        ),
        title: Text(
          'Welcome to Kaamly',
          style: AppFonts.titleLarge.copyWith(
            color: AppColors.secondary,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10 * scale),

                    // PROVIDER PROFILE CARD
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(18 * scale),
                      decoration: BoxDecoration(
                        color: AppColors.primaryDark,
                        borderRadius: BorderRadius.circular(17 * scale),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.handyman_outlined,
                                size: 29 * scale,
                                color: AppColors.mint,
                              ),

                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 10 * scale,
                                  vertical: 6 * scale,
                                ),
                                decoration: BoxDecoration(
                                  color: AppColors.mint,
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Icon(
                                          Icons.verified_rounded,
                                          size: 11 * scale,
                                          color: AppColors.primaryDark,
                                        ),
                                        SizedBox(width: 3 * scale),
                                        Text(
                                          'VERIFIED',
                                          style: AppFonts.labelSmall.copyWith(
                                            color: AppColors.primaryDark,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ],
                                    ),

                                    SizedBox(height: 4 * scale),

                                    Text(
                                      'Available today',
                                      style: AppFonts.labelSmall.copyWith(
                                        color: AppColors.primaryDark,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 15 * scale),
                          Text(
                            'Greenline Plumbing',
                            style: AppFonts.headlineSmall.copyWith(
                              color: AppColors.white,
                              fontSize: 20 * scale,
                            ),
                          ),
                          SizedBox(height: 10 * scale),
                          Row(
                            children: [
                              const Icon(
                                Icons.star,
                                color: AppColors.white,
                                size: 13,
                              ),
                              SizedBox(width: 4 * scale),
                              Text(
                                '4.9 (128 reviews)',
                                style: AppFonts.caption.copyWith(
                                  color: AppColors.white,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8 * scale,
                                ),
                                child: const Icon(
                                  Icons.circle,
                                  color: AppColors.mint,
                                  size: 4,
                                ),
                              ),
                              Flexible(
                                child: Text(
                                  '6 years of experience',
                                  style: AppFonts.caption.copyWith(
                                    color: AppColors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 13 * scale),
                        ],
                      ),
                    ),

                    SizedBox(height: 24 * scale),

                    // DESCRIPTION
                    Text(
                      'Reliable repairs. Zero stress.',
                      style: AppFonts.titleLarge.copyWith(
                        color: AppColors.secondary,
                      ),
                    ),
                    SizedBox(height: 8 * scale),
                    Text(
                      'Leak repairs, installations and everyday plumbing, '
                      'handled by trained, background-checked experts.',
                      style: AppFonts.bodySmall.copyWith(
                        color: AppColors.lightTextSecondary,
                        height: 1.5,
                      ),
                    ),

                    SizedBox(height: 27 * scale),

                    // SERVICES
                    Text(
                      'Services available',
                      style: AppFonts.titleLarge.copyWith(
                        color: AppColors.secondary,
                      ),
                    ),
                    SizedBox(height: 12 * scale),

                    ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: services.length,
                      separatorBuilder: (context, index) =>
                          SizedBox(height: 8 * scale),
                      itemBuilder: (context, index) {
                        final service = services[index];

                        return Container(
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(
                            horizontal: 13 * scale,
                            vertical: 13 * scale,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.lightSurface,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  service['name']!,
                                  style: AppFonts.bodySmall.copyWith(
                                    color: AppColors.secondary,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),

                    SizedBox(height: 17 * scale),

                    // CUSTOMER REVIEW
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          size: 14,
                          color: AppColors.primaryDark,
                        ),
                        SizedBox(width: 4 * scale),
                        Text(
                          '4.9',
                          style: AppFonts.labelMedium.copyWith(
                            color: AppColors.secondary,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(width: 7 * scale),
                        Expanded(
                          child: Text(
                            '"On time, tidy and fixed it in one visit."',
                            style: AppFonts.bodySmall.copyWith(
                              color: AppColors.secondary,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8 * scale),
                    Text(
                      'Priya S. · Verified booking · 14 Nov',
                      style: AppFonts.caption.copyWith(
                        color: AppColors.lightTextSecondary,
                      ),
                    ),
                    SizedBox(height: 20 * scale),
                  ],
                ),
              ),
            ),

            // SELECT SERVICE BUTTON
            Padding(
              padding: EdgeInsets.fromLTRB(
                size.width * 0.04,
                10,
                size.width * 0.04,
                12,
              ),
              child: SizedBox(
                width: double.infinity,
                height: 50 * scale,
                child: ElevatedButton(
                  onPressed: () {
                    // Navigate to service selection screen
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryDark,
                    foregroundColor: AppColors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(11),
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Select service',
                          style: AppFonts.button.copyWith(
                            color: AppColors.white,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_rounded,
                        size: 21 * scale,
                        color: AppColors.mint,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
