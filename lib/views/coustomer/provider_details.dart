import 'package:fixify/app/app_theme.dart';
import 'package:fixify/constant/colors.dart';
import 'package:fixify/constant/fontsapp.dart';
import 'package:flutter/material.dart';

class ProviderDetailsScreen extends StatelessWidget {
  const ProviderDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textColor = AppTheme.primaryTextColor(context);
    final secondaryTextColor = AppTheme.secondaryTextColor(context);

    // final size = MediaQuery.of(context).size;
    // final scale = (size.width / 390).clamp(0.85, 1.15).toDouble();

    final services = [
      {'name': 'Tap & leak repair'},
      {'name': 'Drain cleaning'},
      {'name': 'Bathroom fittings'},
    ];

    return Scaffold(
      backgroundColor: AppTheme.backgroundColor(context),

      // APP BAR
      appBar: AppBar(
        backgroundColor: AppTheme.backgroundColor(context),
        elevation: 0,
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
          'Provider details',
          style: AppFonts.titleLarge.copyWith(color: textColor),
        ),
      ),

      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),

                    // PROVIDER PROFILE CARD
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        color: AppColors.primaryDark,
                        borderRadius: BorderRadius.circular(17),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.handyman_outlined,
                                size: 29,
                                color: AppColors.mint,
                              ),

                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 6,
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
                                          size: 11,
                                          color: AppColors.primaryDark,
                                        ),
                                        const SizedBox(width: 3),
                                        Text(
                                          'VERIFIED',
                                          style: AppFonts.labelSmall.copyWith(
                                            color: AppColors.primaryDark,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ],
                                    ),

                                    const SizedBox(height: 4),

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
                          const SizedBox(height: 15),
                          Text(
                            'Greenline Plumbing',
                            style: AppFonts.headlineSmall.copyWith(
                              color: AppColors.white,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              const Icon(
                                Icons.star,
                                color: AppColors.white,
                                size: 13,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                '4.9 (128 reviews)',
                                style: AppFonts.caption.copyWith(
                                  color: AppColors.white,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8,
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
                          const SizedBox(height: 13),
                        ],
                      ),
                    ),

                    const SizedBox(height: 24),

                    // DESCRIPTION
                    Text(
                      'Reliable repairs. Zero stress.',
                      style: AppFonts.titleLarge.copyWith(
                        color: textColor,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Leak repairs, installations and everyday plumbing, '
                      'handled by trained, background-checked experts.',
                      style: AppFonts.bodySmall.copyWith(
                        color: secondaryTextColor,
                        height: 1.5,
                      ),
                    ),

                    const SizedBox(height: 27),

                    // SERVICES
                    Text(
                      'Services available',
                      style: AppFonts.titleLarge.copyWith(
                        color: textColor,
                      ),
                    ),
                    const SizedBox(height: 12),

                    ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: services.length,
                      separatorBuilder: (context, index) =>
                          const SizedBox(height: 8),
                      itemBuilder: (context, index) {
                        final service = services[index];

                        return Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 13,
                            vertical: 13,
                          ),
                          decoration: BoxDecoration(
                            color: AppTheme.surfaceColor(context),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  service['name']!,
                                  style: AppFonts.bodySmall.copyWith(
                                    color: textColor,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),

                    const SizedBox(height: 17),

                    // CUSTOMER REVIEW
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          size: 14,
                          color: AppColors.primaryDark,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          '4.9',
                          style: AppFonts.labelMedium.copyWith(
                            color: textColor,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(width: 7),
                        Expanded(
                          child: Text(
                            '"On time, tidy and fixed it in one visit."',
                            style: AppFonts.bodySmall.copyWith(
                              color: textColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Priya S. · Verified booking · 14 Nov',
                      style: AppFonts.caption.copyWith(
                        color: secondaryTextColor,
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),

            // SELECT SERVICE BUTTON
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 10, 16, 12),
              child: SizedBox(
                width: double.infinity,
                height: 50,
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
                        size: 21,
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
