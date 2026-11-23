import 'package:fixify/app/app_theme.dart';
import 'package:fixify/constant/colors.dart';
import 'package:fixify/constant/fontsapp.dart';
import 'package:fixify/controllers/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.find<ThemeController>();
    final size = MediaQuery.of(context).size;
    final isSmallScreen = size.width < 360;
    final isDarkMode = AppTheme.isDark(context);
    final backgroundColor = AppTheme.backgroundColor(context);
    final surfaceColor = AppTheme.surfaceColor(context);
    final textColor = AppTheme.primaryTextColor(context);
    final secondaryTextColor = AppTheme.secondaryTextColor(context);

    // Services data
    final List<Map<String, dynamic>> services = [
      {'name': 'Plumbing', 'icon': Icons.water_drop_outlined},
      {'name': 'Electrical', 'icon': Icons.electric_bolt_outlined},
      {'name': 'Cleaning', 'icon': Icons.cleaning_services_outlined},
      {'name': 'AC Repair', 'icon': Icons.ac_unit_outlined},
      {'name': 'Appliances', 'icon': Icons.grid_view_rounded},
      {'name': 'Carpentry', 'icon': Icons.handyman_outlined},
      {'name': 'Painting', 'icon': Icons.format_paint_outlined},
      {'name': 'Gardening', 'icon': Icons.yard_outlined},
      {'name': 'Handyman', 'icon': Icons.build_outlined},
    ];

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.045,
            vertical: 12,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // HEADER
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'YOUR HOME, SORTED',
                          style: const TextStyle(fontFamily: AppFonts.bodyFont, fontSize: 10, fontWeight: FontWeight.w600, color: AppColors.primaryDark),
                        ),
                        Text(
                          'Kaamly',
                          style: const TextStyle(fontFamily: AppFonts.headingFont, fontSize: 24, fontWeight: FontWeight.bold, color: AppColors.primary),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () => themeController.toggleTheme(!isDarkMode),
                    icon: Icon(
                      isDarkMode
                          ? Icons.light_mode_rounded
                          : Icons.dark_mode_rounded,
                      color: AppColors.primaryDark,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    tooltip: 'Notifications',
                    icon: const Icon(
                      Icons.notifications_none_rounded,
                      color: AppColors.primaryDark,
                    ),
                  ),
                ],
              ),

              // LOCATION
              Row(
                children: [
                  const Icon(
                    Icons.location_on_outlined,
                    size: 15,
                    color: AppColors.primaryDark,
                  ),
                  const SizedBox(width: 5),
                  Text(
                    'Home · Indiranagar, Bengaluru',
                    style: TextStyle(fontFamily: AppFonts.bodyFont, fontSize: 12, color: textColor),
                  ),
                ],
              ),

              const SizedBox(height: 16),

              // SEARCH BAR
              SizedBox(
                height: 46,
                child: TextField(
                  textAlignVertical: TextAlignVertical.center,
                  style: TextStyle(fontFamily: AppFonts.bodyFont, fontSize: 14, color: textColor),
                  decoration: InputDecoration(
                    hintText: 'What can we help with?',
                    hintStyle: TextStyle(fontFamily: AppFonts.bodyFont, fontSize: 13, color: AppTheme.hintColor(context)),
                    prefixIcon: const Icon(
                      Icons.search_rounded,
                      color: AppColors.primaryDark,
                      size: 20,
                    ),
                    prefixIconConstraints: const BoxConstraints(
                      minWidth: 44,
                      minHeight: 46,
                    ),
                    filled: true,
                    fillColor: surfaceColor,
                    contentPadding: const EdgeInsets.only(right: 14),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(13),
                      borderSide: BorderSide.none,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(13),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(13),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 14),

              // PROMOTIONAL BANNER
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(size.width * 0.045),
                decoration: BoxDecoration(
                  color: AppColors.primaryDark,
                  borderRadius: BorderRadius.circular(17),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 9,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.mint,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        'TRUSTED LOCAL HELP',
                        style: const TextStyle(fontFamily: AppFonts.bodyFont, fontSize: 10, fontWeight: FontWeight.w500, color: AppColors.primaryDark),
                      ),
                    ),

                    const SizedBox(height: 10),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Less to do.\nMore living.',
                          style: const TextStyle(fontFamily: AppFonts.headingFont, fontSize: 24, fontWeight: FontWeight.bold, color: AppColors.white),
                        ),
                        const SizedBox(height: 7),
                        Text(
                          'Book reliable experts right in your neighborhood.',
                          style: const TextStyle(fontFamily: AppFonts.bodyFont, fontSize: 12, color: AppColors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 18),

              // SERVICES HEADING
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Explore services',
                    style: TextStyle(fontFamily: AppFonts.headingFont, fontSize: 16, fontWeight: FontWeight.w600, color: textColor),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'View all',
                      style: const TextStyle(fontFamily: AppFonts.bodyFont, fontSize: 10, fontWeight: FontWeight.w500, color: AppColors.primaryDark),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 8),

              // SERVICES GRID
              Column(
                children: List.generate(
                  (services.length / 3).ceil(),
                  (rowIndex) {
                    final start = rowIndex * 3;
                    final rowServices = services.skip(start).take(3).toList();
                    return Padding(
                      padding: EdgeInsets.only(
                        bottom: rowIndex ==
                                (services.length / 3).ceil() - 1
                            ? 0
                            : 9,
                      ),
                      child: Row(
                        children: List.generate(3, (columnIndex) {
                          final service = columnIndex < rowServices.length
                              ? rowServices[columnIndex]
                              : null;
                          return Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(
                                right: columnIndex == 2 ? 0 : 9,
                              ),
                              child: service == null
                                  ? const SizedBox()
                                  : GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        height: isSmallScreen ? 88 : 96,
                                        decoration: BoxDecoration(
                                          color: surfaceColor,
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              service['icon'] as IconData,
                                              size:
                                                  isSmallScreen ? 19 : 22,
                                              color: AppColors.primaryDark,
                                            ),
                                            const SizedBox(height: 7),
                                            Text(
                                              service['name'] as String,
                                              textAlign: TextAlign.center,
                                              style:
                                                  TextStyle(fontFamily: AppFonts.bodyFont, fontSize: 12, fontWeight: FontWeight.w500, color: textColor),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                            ),
                          );
                        }),
                      ),
                    );
                  },
                ),
              ),

              const SizedBox(height: 16),

              // TRUST CARD
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: 13,
                  vertical: 12,
                ),
                decoration: BoxDecoration(
                  color: isDarkMode
                      ? AppTheme.cardColor(context)
                      : AppColors.mint.withValues(alpha: 0.55),
                  borderRadius: BorderRadius.circular(13),
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.verified_user_outlined,
                      color: AppColors.primaryDark,
                      size: 23,
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Good people. Great work.',
                            style: TextStyle(fontFamily: AppFonts.bodyFont, fontSize: 12, fontWeight: FontWeight.w500, color: textColor),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Verified experts • Convenient booking',
                            style: TextStyle(fontFamily: AppFonts.bodyFont, fontSize: 11, color: secondaryTextColor),
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
    );
  }
}
