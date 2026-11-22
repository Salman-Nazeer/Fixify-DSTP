import 'package:fixify/app/app_theme.dart';
import 'package:fixify/constant/colors.dart';
import 'package:fixify/constant/fontsapp.dart';
import 'package:fixify/views/coustomer/provider_details.dart';
import 'package:flutter/material.dart';

class ExploreServicesScreen extends StatelessWidget {
  const ExploreServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final isSmallScreen = size.width < 360;
    final isDarkMode = AppTheme.isDark(context);
    final textColor = AppTheme.primaryTextColor(context);
    final secondaryTextColor = AppTheme.secondaryTextColor(context);
    final surfaceColor = AppTheme.surfaceColor(context);

    final List<Map<String, String>> providers = [
      {
        'name': 'Greenline Plumbing',
        'rating': '4.9 (128)',
        'availability': 'Available today',
      },
      {
        'name': 'QuickFix Home Care',
        'rating': '4.8 (96)',
        'availability': 'Available today',
      },
      {
        'name': 'Urban Pipe Works',
        'rating': '4.7 (84)',
        'availability': 'Next slot 2 pm',
      },
      {
        'name': 'QuickFix Home Care',
        'rating': '4.8 (96)',
        'availability': 'Available today',
      },
      {
        'name': 'Urban Pipe Works',
        'rating': '4.7 (84)',
        'availability': 'Next slot 2 pm',
      },
      {
        'name': 'QuickFix Home Care',
        'rating': '4.8 (96)',
        'availability': 'Available today',
      },
      {
        'name': 'Urban Pipe Works',
        'rating': '4.7 (84)',
        'availability': 'Next slot 2 pm',
      },
      {
        'name': 'QuickFix Home Care',
        'rating': '4.8 (96)',
        'availability': 'Available today',
      },
      {
        'name': 'Urban Pipe Works',
        'rating': '4.7 (84)',
        'availability': 'Next slot 2 pm',
      },
    ];

    return Scaffold(
      backgroundColor: AppTheme.backgroundColor(context),
      appBar: AppBar(
        toolbarHeight: 76,
        backgroundColor: AppTheme.backgroundColor(context),
        surfaceTintColor: AppColors.transparent,
        elevation: 0,
        titleSpacing: 20,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'EXPLORE',
              style: AppFonts.overline.copyWith(color: AppColors.primaryDark),
            ),
            Text(
              'Find a provider',
              style: AppFonts.titleLarge.copyWith(color: AppColors.primary),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(
          size.width * 0.045,
          8,
          size.width * 0.045,
          20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // SEARCH BAR
            SizedBox(
              height: 48,
              child: TextField(
                textAlignVertical: TextAlignVertical.center,
                style: AppFonts.input.copyWith(color: textColor),
                decoration: InputDecoration(
                  hintText: 'Search service or location',
                  hintStyle: AppFonts.hint.copyWith(
                    color: AppTheme.hintColor(context),
                  ),
                  prefixIcon: const Icon(
                    Icons.search_rounded,
                    color: AppColors.primaryDark,
                    size: 20,
                  ),
                  prefixIconConstraints: const BoxConstraints(
                    minWidth: 46,
                    minHeight: 48,
                  ),
                  filled: true,
                  fillColor: surfaceColor,
                  contentPadding: const EdgeInsets.only(right: 14),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 24),

            // RESULTS HEADER
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(
                    '12 trusted plumbers',
                    style: AppFonts.titleMedium.copyWith(color: textColor),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: isDarkMode ? AppColors.darkCard : AppColors.mint,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    'NEAR YOU',
                    style: AppFonts.overline.copyWith(
                      color: isDarkMode
                          ? AppColors.primaryLight
                          : AppColors.primaryDark,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Text(
              'Sorted by recommended',
              style: TextStyle(
                fontFamily: AppFonts.bodyFont,
                fontSize: AppFonts.bodySmallSize,
                fontWeight: FontWeight.w400,
                color: secondaryTextColor,
              ),
            ),

            const SizedBox(height: 16),

            // PROVIDER CARDS LIST
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: providers.length,
              itemBuilder: (context, index) {
                final provider = providers[index];
                final isAvailableToday =
                    provider['availability'] == 'Available today';

                return InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => ProviderDetailsScreen(),
                      ),
                    );
                  },
                  borderRadius: BorderRadius.circular(18),
                  child: Container(
                    margin: const EdgeInsets.only(top: 14),
                    padding: EdgeInsets.all(isSmallScreen ? 14 : 16),
                    decoration: BoxDecoration(
                      color: surfaceColor,
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(color: AppTheme.borderColor(context)),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.secondary.withValues(alpha: 0.035),
                          blurRadius: 16,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: isDarkMode
                                    ? AppColors.darkSurface
                                    : AppColors.mint,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: const Icon(
                                Icons.handyman_outlined,
                                color: AppColors.primaryDark,
                                size: 23,
                              ),
                            ),
                            const SizedBox(width: 13),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    provider['name']!,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: AppFonts.titleSmall.copyWith(
                                      color: textColor,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.star_rounded,
                                        size: 15,
                                        color: AppColors.warning,
                                      ),
                                      const SizedBox(width: 3),
                                      Text(
                                        provider['rating']!,
                                        style: AppFonts.labelSmall.copyWith(
                                          color: textColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 15,
                              color: AppTheme.hintColor(context),
                            ),
                          ],
                        ),

                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 9,
                              vertical: 6,
                            ),
                            decoration: BoxDecoration(
                              color: isDarkMode
                                  ? AppColors.darkSurface
                                  : isAvailableToday
                                  ? AppColors.successLight
                                  : AppColors.mint,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  isAvailableToday
                                      ? Icons.check_circle_outline_rounded
                                      : Icons.schedule_rounded,
                                  size: 13,
                                  color: isAvailableToday
                                      ? AppColors.success
                                      : isDarkMode
                                      ? AppColors.primaryLight
                                      : AppColors.primaryDark,
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  provider['availability']!,
                                  style: AppFonts.labelSmall.copyWith(
                                    color: isAvailableToday
                                        ? AppColors.success
                                        : isDarkMode
                                        ? AppColors.primaryLight
                                        : AppColors.primaryDark,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
