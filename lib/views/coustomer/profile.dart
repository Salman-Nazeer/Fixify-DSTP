import 'package:fixify/controllers/theme_controller.dart';
import 'package:fixify/views/coustomeWidgts/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:fixify/app/app_theme.dart';
import 'package:fixify/constant/colors.dart';
import 'package:fixify/constant/fontsapp.dart';
import 'package:get/get.dart';

final themeController = Get.find<ThemeController>();

class CustomerProfileScreen extends StatelessWidget {
  const CustomerProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final scale = (screenWidth / 390).clamp(0.85, 1.15).toDouble();

    final surfaceColor = AppTheme.surfaceColor(context);
    final textColor = AppTheme.primaryTextColor(context);
    final secondaryTextColor = AppTheme.secondaryTextColor(context);
    final isDarkMode = AppTheme.isDark(context);

    final List<Map<String, dynamic>> settingsItems = [
      {'icon': Icons.dark_mode_outlined, 'title': 'Appearance'},
      {'icon': Icons.lock_outline, 'title': 'Change password'},
      {'icon': Icons.headset_mic_outlined, 'title': 'Help & support'},
      {'icon': Icons.privacy_tip_outlined, 'title': 'Privacy policy'},
    ];

    return Scaffold(
      backgroundColor: AppTheme.backgroundColor(context),

      appBar: customAppBar(context, title: 'My profile', showBackButton: false),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16 * scale),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // CUSTOMER PROFILE CARD
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(16 * scale),
                decoration: BoxDecoration(
                  color: AppColors.primaryDark,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        // PROFILE IMAGE
                        CircleAvatar(
                          radius: 30 * scale,
                          backgroundColor: AppColors.mint,
                          child: Icon(
                            Icons.person_outline,
                            size: 34 * scale,
                            color: AppColors.primaryDark,
                          ),
                        ),

                        SizedBox(width: 12 * scale),

                        // CUSTOMER INFORMATION
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Ahmed Khan',
                                style: AppFonts.titleLarge.copyWith(
                                  color: AppColors.white,
                                ),
                              ),

                              const SizedBox(height: 4),

                              Text(
                                'ahmed@email.com',
                                style: AppFonts.bodySmall.copyWith(
                                  color: AppColors.mint,
                                ),
                              ),

                              const SizedBox(height: 6),

                              Row(
                                children: [
                                  const Icon(
                                    Icons.verified,
                                    color: AppColors.mint,
                                    size: 14,
                                  ),

                                  const SizedBox(width: 4),

                                  Text(
                                    'Verified customer',
                                    style: AppFonts.labelSmall.copyWith(
                                      color: AppColors.mint,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                        // EDIT PROFILE
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.edit_outlined,
                            color: AppColors.white,
                            size: 20,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 14 * scale),
                  ],
                ),
              ),

              SizedBox(height: 24 * scale),

              // SETTINGS SECTION
              Text(
                'PREFERENCES & SUPPORT',
                style: AppFonts.overline.copyWith(color: secondaryTextColor),
              ),

              SizedBox(height: 10 * scale),

              Container(
                decoration: BoxDecoration(
                  color: surfaceColor,
                  borderRadius: BorderRadius.circular(14),
                ),

                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: settingsItems.length,

                  itemBuilder: (context, index) {
                    final item = settingsItems[index];

                    return GestureDetector(
                      onTap: () {
                        if (item['title'] == 'Appearance') {
                          showAppearanceDialog(context);
                        }
                      },

                      child: Padding(
                        padding: EdgeInsets.all(12 * scale),

                        child: Row(
                          children: [
                            // ICON CONTAINER
                            Container(
                              height: 38 * scale,
                              width: 38 * scale,
                              decoration: BoxDecoration(
                                color: isDarkMode
                                    ? AppColors.primaryDark.withAlpha(51)
                                    : AppColors.mint,
                                borderRadius: BorderRadius.circular(10),
                              ),

                              child: Icon(
                                item['icon'] as IconData,
                                size: 20 * scale,
                                color: isDarkMode
                                    ? AppColors.primaryLight
                                    : AppColors.primaryDark,
                              ),
                            ),

                            SizedBox(width: 12 * scale),

                            // SETTINGS TITLE
                            Expanded(
                              child: Text(
                                item['title'] as String,
                                style: AppFonts.labelLarge.copyWith(
                                  color: textColor,
                                ),
                              ),
                            ),

                            // FORWARD ARROW
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 14 * scale,
                              color: secondaryTextColor,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),

              SizedBox(height: 20 * scale),

              // LOGOUT BUTTON
              GestureDetector(
                onTap: () {},

                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 14 * scale),

                  decoration: BoxDecoration(
                    color: surfaceColor,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: AppColors.error.withAlpha(51)),
                  ),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.logout,
                        color: AppColors.error,
                        size: 20,
                      ),

                      const SizedBox(width: 8),

                      Text(
                        'Log out',
                        style: AppFonts.button.copyWith(color: AppColors.error),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 20 * scale),

              // APPLICATION VERSION
              Center(
                child: Text(
                  'Kaamly · Version 1.0.0',
                  style: AppFonts.caption.copyWith(color: secondaryTextColor),
                ),
              ),

              SizedBox(height: 10 * scale),
            ],
          ),
        ),
      ),
    );
  }
}

void showAppearanceDialog(BuildContext context) {
  final isDark = Theme.of(context).brightness == Brightness.dark;

  showDialog<void>(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: const Text('Appearance'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.light_mode_rounded),
              title: const Text('Light mode'),
              trailing: !isDark
                  ? const Icon(Icons.check, color: AppColors.primary)
                  : null,
              onTap: () {
                Navigator.pop(context);
                themeController.toggleTheme(false);
              },
            ),
            ListTile(
              leading: const Icon(Icons.dark_mode_rounded),
              title: const Text('Dark mode'),
              trailing: isDark
                  ? const Icon(Icons.check, color: AppColors.primary)
                  : null,
              onTap: () {
                Navigator.pop(context);
                themeController.toggleTheme(true);
              },
            ),
          ],
        ),
      );
    },
  );
}
