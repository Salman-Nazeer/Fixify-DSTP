import 'dart:io';

import 'package:fixify/app/app_theme.dart';
import 'package:fixify/constant/colors.dart';
import 'package:fixify/constant/fontsapp.dart';
import 'package:fixify/controllers/theme_controller.dart';
import 'package:fixify/views/coustomeWidgts/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ProviderProfileScreen extends StatefulWidget {
  const ProviderProfileScreen({super.key});

  @override
  State<ProviderProfileScreen> createState() => _ProviderProfileScreenState();
}

class _ProviderProfileScreenState extends State<ProviderProfileScreen> {
  final ThemeController _themeController = Get.find<ThemeController>();
  File? _providerImage;
  bool _isAvailable = true;

  final List<Map<String, dynamic>> _providerMenuItems = [
    {'icon': Icons.dark_mode_outlined, 'title': 'Appearance'},
    {'icon': Icons.lock_outline, 'title': 'Change password'},
    {'icon': Icons.headset_mic_outlined, 'title': 'Help & support'},
    {'icon': Icons.privacy_tip_outlined, 'title': 'Privacy policy'},
  ];

  final String _activeService = 'Tap & leak repair';

  Future<void> _pickProfileImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null && mounted) {
      setState(() {
        _providerImage = File(image.path);
      });
    }
  }

  void _showAppearanceDialog() {
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
                  _themeController.toggleTheme(false);
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
                  _themeController.toggleTheme(true);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final scale = (screenWidth / 390).clamp(0.85, 1.15).toDouble();
    final surfaceColor = AppTheme.surfaceColor(context);
    final textColor = AppTheme.primaryTextColor(context);
    final secondaryTextColor = AppTheme.secondaryTextColor(context);
    final isDarkMode = AppTheme.isDark(context);

    return Scaffold(
      backgroundColor: AppTheme.backgroundColor(context),
      appBar: customAppBar(
        context,
        title: 'Provider profile',
        showBackButton: false,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16 * scale),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // PROVIDER PROFILE CARD
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(16 * scale),
                decoration: BoxDecoration(
                  color: AppColors.primaryDark,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        _providerImage != null
                            ? GestureDetector(
                                onTap: _pickProfileImage,
                                child: CircleAvatar(
                                  radius: 30 * scale,
                                  backgroundColor: AppColors.mint,
                                  child: CircleAvatar(
                                    radius: 28 * scale,
                                    backgroundImage: FileImage(_providerImage!),
                                  ),
                                ),
                              )
                            : CircleAvatar(
                                radius: 30 * scale,
                                backgroundColor: AppColors.mint,
                                child: IconButton(
                                  padding: EdgeInsets.zero,
                                  constraints: const BoxConstraints(),
                                  icon: const Icon(Icons.camera_alt_outlined),
                                  iconSize: 22 * scale,
                                  color: AppColors.primaryDark,
                                  onPressed: _pickProfileImage,
                                ),
                              ),

                        SizedBox(width: 12 * scale),

                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Greenline Plumbing',
                                style: const TextStyle(
                                  fontFamily: AppFonts.headingFont,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.white,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                'greenline.plumbing@email.com',
                                style: const TextStyle(
                                  fontFamily: AppFonts.bodyFont,
                                  fontSize: 12,
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
                                    'Verified provider · 6 yrs exp',
                                    style: const TextStyle(
                                      fontFamily: AppFonts.bodyFont,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.mint,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 14 * scale),

                    // STATS ROW
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 10 * scale,
                              horizontal: 10 * scale,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.white.withAlpha(20),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              children: [
                                Text(
                                  '4.9 ★',
                                  style: const TextStyle(
                                    fontFamily: AppFonts.headingFont,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.white,
                                  ),
                                ),
                                const SizedBox(height: 2),
                                Text(
                                  '128 reviews',
                                  style: const TextStyle(
                                    fontFamily: AppFonts.bodyFont,
                                    fontSize: 11,
                                    color: AppColors.mint,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 10 * scale),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 10 * scale,
                              horizontal: 10 * scale,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.white.withAlpha(20),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              children: [
                                Text(
                                  '96%',
                                  style: const TextStyle(
                                    fontFamily: AppFonts.headingFont,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.white,
                                  ),
                                ),
                                const SizedBox(height: 2),
                                Text(
                                  'Completion',
                                  style: const TextStyle(
                                    fontFamily: AppFonts.bodyFont,
                                    fontSize: 11,
                                    color: AppColors.mint,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 10 * scale),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 10 * scale,
                              horizontal: 10 * scale,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.white.withAlpha(20),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              children: [
                                Text(
                                  '214',
                                  style: const TextStyle(
                                    fontFamily: AppFonts.headingFont,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.white,
                                  ),
                                ),
                                const SizedBox(height: 2),
                                Text(
                                  'Jobs done',
                                  style: const TextStyle(
                                    fontFamily: AppFonts.bodyFont,
                                    fontSize: 11,
                                    color: AppColors.mint,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 12 * scale),

                    // AVAILABILITY TOGGLE
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12 * scale,
                        vertical: 6 * scale,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.white.withAlpha(20),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 4,
                                backgroundColor: _isAvailable
                                    ? AppColors.mint
                                    : AppColors.warning,
                              ),
                              SizedBox(width: 8 * scale),
                              Text(
                                _isAvailable
                                    ? 'Accepting bookings today'
                                    : 'Paused for today',
                                style: const TextStyle(
                                  fontFamily: AppFonts.bodyFont,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.white,
                                ),
                              ),
                            ],
                          ),
                          Switch(
                            value: _isAvailable,
                            activeTrackColor: AppColors.mint,
                            activeThumbColor: AppColors.primaryDark,
                            onChanged: (value) {
                              setState(() {
                                _isAvailable = value;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 22 * scale),

              // ACTIVE SERVICE SECTION
              Text(
                'ACTIVE SERVICE',
                style: TextStyle(
                  fontFamily: AppFonts.bodyFont,
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                  color: secondaryTextColor,
                ),
              ),
              SizedBox(height: 10 * scale),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(12 * scale),
                decoration: BoxDecoration(
                  color: surfaceColor,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.check_circle_outline,
                      size: 18 * scale,
                      color: isDarkMode
                          ? AppColors.primaryLight
                          : AppColors.primaryDark,
                    ),
                    SizedBox(width: 10 * scale),
                    Expanded(
                      child: Text(
                        _activeService,
                        style: TextStyle(
                          fontFamily: AppFonts.bodyFont,
                          fontSize: 14,
                          color: textColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 22 * scale),

              // PREFERENCES & BUSINESS SETTINGS
              Text(
                'BUSINESS & PREFERENCES',
                style: TextStyle(
                  fontFamily: AppFonts.bodyFont,
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                  color: secondaryTextColor,
                ),
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
                  itemCount: _providerMenuItems.length,
                  itemBuilder: (context, index) {
                    final item = _providerMenuItems[index];
                    return GestureDetector(
                      onTap: () {
                        if (item['title'] == 'Appearance') {
                          _showAppearanceDialog();
                        }
                      },
                      child: Padding(
                        padding: EdgeInsets.all(12 * scale),
                        child: Row(
                          children: [
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
                            Expanded(
                              child: Text(
                                item['title'] as String,
                                style: TextStyle(
                                  fontFamily: AppFonts.bodyFont,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: textColor,
                                ),
                              ),
                            ),
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
                        style: const TextStyle(
                          fontFamily: AppFonts.headingFont,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: AppColors.error,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 20 * scale),

              // VERSION FOOTER
              Center(
                child: Text(
                  'Kaamly Provider · Version 1.0.0',
                  style: TextStyle(
                    fontFamily: AppFonts.bodyFont,
                    fontSize: 11,
                    color: secondaryTextColor,
                  ),
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