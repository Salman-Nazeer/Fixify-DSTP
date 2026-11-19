import 'package:fixify/constant/colors.dart';
import 'package:fixify/constant/fontsapp.dart';
import 'package:flutter/material.dart';

class ExploreServicesScreen extends StatelessWidget {
  const ExploreServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final isSmallScreen = size.width < 360;

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
      backgroundColor: AppColors.lightBackground,
      appBar: AppBar(
        toolbarHeight: 76,
        backgroundColor: AppColors.lightBackground,
        surfaceTintColor: AppColors.transparent,
        elevation: 0,
        titleSpacing: 20,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DefaultTextStyle.merge(
              style: const TextStyle(color: AppColors.primaryDark),
              child: const Text('EXPLORE', style: AppFonts.overline),
            ),
            DefaultTextStyle.merge(
              style: const TextStyle(color: AppColors.primary),
              child: const Text('Find a provider', style: AppFonts.titleLarge),
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
                style: AppFonts.input,
                decoration: InputDecoration(
                  hintText: 'Search service or location',
                  hintStyle: AppFonts.hint,
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
                  fillColor: AppColors.white,
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
                  child: DefaultTextStyle.merge(
                    style: const TextStyle(color: AppColors.primary),
                    child: const Text(
                      '12 trusted plumbers',
                      style: AppFonts.titleMedium,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.mint,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: DefaultTextStyle.merge(
                    style: const TextStyle(color: AppColors.primaryDark),
                    child: const Text('NEAR YOU', style: AppFonts.overline),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            DefaultTextStyle.merge(
              style: const TextStyle(color: AppColors.lightTextSecondary),
              child: const Text(
                'Sorted by recommended  ·  Within 5 km',
                style: AppFonts.bodySmall,
              ),
            ),

            const SizedBox(height: 16),

            // PROVIDER CARDS LIST
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: providers.length,
              separatorBuilder: (context, index) => const SizedBox(height: 14),
              itemBuilder: (context, index) {
                final provider = providers[index];
                final isAvailableToday =
                    provider['availability'] == 'Available today';

                return InkWell(
                  onTap: () {
                    // Navigate to provider details
                  },
                  borderRadius: BorderRadius.circular(18),
                  child: Container(
                    padding: EdgeInsets.all(isSmallScreen ? 14 : 16),
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(color: AppColors.lightBorder),
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
                                color: AppColors.mint,
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
                                  DefaultTextStyle.merge(
                                    style: const TextStyle(
                                      color: AppColors.primary,
                                    ),
                                    child: Text(
                                      provider['name']!,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: AppFonts.titleSmall,
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
                                      DefaultTextStyle.merge(
                                        style: const TextStyle(
                                          color: AppColors.secondary,
                                        ),
                                        child: Text(
                                          provider['rating']!,
                                          style: AppFonts.labelSmall,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 15,
                              color: AppColors.lightTextHint,
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
                              color: isAvailableToday
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
                                      : AppColors.primaryDark,
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  provider['availability']!,
                                  style: AppFonts.labelSmall.copyWith(
                                    color: isAvailableToday
                                        ? AppColors.success
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
