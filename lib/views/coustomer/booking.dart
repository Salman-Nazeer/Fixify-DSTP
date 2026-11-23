import 'package:fixify/app/app_theme.dart';
import 'package:fixify/constant/colors.dart';
import 'package:fixify/constant/fontsapp.dart';
import 'package:fixify/views/coustomeWidgts/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookingsScreen extends StatefulWidget {
  const BookingsScreen({super.key});

  @override
  State<BookingsScreen> createState() => _BookingsScreenState();
}

class _BookingsScreenState extends State<BookingsScreen> {
  final TextEditingController _problemController = TextEditingController();

  int _selectedDateIndex = 1;
  int _selectedSlotIndex = 1;

  final List<Map<String, String>> _dates = [
    {'day': 'Wed', 'date': '18'},
    {'day': 'Thu', 'date': '19'},
    {'day': 'Fri', 'date': '20'},
    {'day': 'Sat', 'date': '21'},
    {'day': 'Sun', 'date': '22'},
  ];

  final List<String> _timeSlots = ['09–11 am', '11 am–1 pm', '02–04 pm'];

  @override
  void dispose() {
    _problemController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    // final isSmall = size.width < 360;
    final textColor = AppTheme.primaryTextColor(context);
    final secondaryTextColor = AppTheme.secondaryTextColor(context);
    final surfaceColor = AppTheme.surfaceColor(context);
    final horizontalPadding = (size.width * 0.055).clamp(16.0, 28.0);

    return Scaffold(
      backgroundColor: AppTheme.backgroundColor(context),
      appBar: customAppBar(
    context,
    title: 'My bookings',
  ),
      body: SafeArea(
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          padding: EdgeInsets.fromLTRB(
            horizontalPadding,
            8,
            horizontalPadding,
            24,
          ),
          child: Center(
            child: SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Service service",
                    style: TextStyle(fontFamily: AppFonts.bodyFont, fontSize: 12, fontWeight: FontWeight.w500, color: AppTheme.secondaryTextColor(context)),
                  ),
                  const SizedBox(height: 7),
                  _buildInfoCard(
                    context,
                    text: 'Tap & leak repair · Greenline Plumbing',
                    icon: Icons.handyman_outlined,
                    textColor: textColor,
                    surfaceColor: surfaceColor,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    "Describe the problem",
                    style: TextStyle(fontFamily: AppFonts.bodyFont, fontSize: 12, fontWeight: FontWeight.w500, color: AppTheme.secondaryTextColor(context)),
                  ),
                  const SizedBox(height: 7),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      color: surfaceColor,
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: AppTheme.borderColor(context)),
                    ),
                    child: TextField(
                      controller: _problemController,
                      maxLines: 3,
                      style: TextStyle(fontFamily: AppFonts.bodyFont, fontSize: 14, color: textColor, height: 1.35),
                      decoration: InputDecoration(
                        isCollapsed: true,
                        border: InputBorder.none,
                        hintText: 'Describe the issue...',
                        hintStyle: TextStyle(fontFamily: AppFonts.bodyFont, fontSize: 13, color: AppTheme.hintColor(context)),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    "Service address",
                    style: TextStyle(fontFamily: AppFonts.bodyFont, fontSize: 12, fontWeight: FontWeight.w500, color: AppTheme.secondaryTextColor(context)),
                  ),
                  const SizedBox(height: 7),
                  _buildInfoCard(
                    context,
                    text: 'Home · 42, 12th Main, Indiranagar, Bengaluru',
                    icon: Icons.location_on_outlined,
                    textColor: textColor,
                    surfaceColor: surfaceColor,
                  ),
                  const SizedBox(height: 18),
                  
                  Text(
                    "Choose a date · November 2026",
                    style: TextStyle(fontFamily: AppFonts.bodyFont, fontSize: 12, fontWeight: FontWeight.w500, color: AppTheme.secondaryTextColor(context)),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: List.generate(_dates.length, (index) {
                      final item = _dates[index];
                      final isSelected = index == _selectedDateIndex;
                      return Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(
                            right: index == _dates.length - 1 ? 0 : 8,
                          ),
                          child: GestureDetector(
                            onTap: () =>
                                setState(() => _selectedDateIndex = index),
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              decoration: BoxDecoration(
                                color: isSelected
                                    ? AppColors.primaryDark
                                    : surfaceColor,
                                borderRadius: BorderRadius.circular(13),
                                border: Border.all(
                                  color: isSelected
                                      ? AppColors.primaryDark
                                      : AppTheme.borderColor(context),
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    item['day']!,
                                    style: TextStyle(fontFamily: AppFonts.bodyFont, fontSize: 10, fontWeight: FontWeight.w500, color: isSelected
                                          ? AppColors.mint
                                          : secondaryTextColor),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    item['date']!,
                                    style: TextStyle(fontFamily: AppFonts.headingFont, fontSize: 16, fontWeight: FontWeight.w700, color: isSelected
                                          ? AppColors.white
                                          : textColor),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                  const SizedBox(height: 18),
                  Text(
                    "Available time slots · IST",
                    style: TextStyle(fontFamily: AppFonts.bodyFont, fontSize: 12, fontWeight: FontWeight.w500, color: AppTheme.secondaryTextColor(context)),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: List.generate(_timeSlots.length, (index) {
                      final isSelected = index == _selectedSlotIndex;
                      return Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(
                            right: index == _timeSlots.length - 1 ? 0 : 8,
                          ),
                          child: GestureDetector(
                            onTap: () =>
                                setState(() => _selectedSlotIndex = index),
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 12),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: isSelected
                                    ? AppColors.primaryDark
                                    : surfaceColor,
                                borderRadius: BorderRadius.circular(11),
                                border: Border.all(
                                  color: isSelected
                                      ? AppColors.primaryDark
                                      : AppTheme.borderColor(context),
                                ),
                              ),
                              child: Text(
                                _timeSlots[index],
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(fontFamily: AppFonts.bodyFont, fontSize: 10, fontWeight: FontWeight.w600, color: isSelected
                                      ? AppColors.white
                                      : AppColors.primaryDark),
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'Times sync with your provider\'s availability.',
                    style: TextStyle(fontFamily: AppFonts.bodyFont, fontSize: 11, color: secondaryTextColor),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    height: 52,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.snackbar(
                          'Booking',
                          'Booking details are ready to review',
                          snackPosition: SnackPosition.BOTTOM,
                          backgroundColor: AppColors.primaryDark,
                          colorText: AppColors.white,
                          margin: const EdgeInsets.all(16),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primaryDark,
                        foregroundColor: AppColors.white,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 18),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Review booking',
                            style: const TextStyle(fontFamily: AppFonts.headingFont, fontSize: 14, fontWeight: FontWeight.w600, color: AppColors.white),
                          ),
                          const Icon(
                            Icons.arrow_forward_rounded,
                            size: 20,
                            color: AppColors.mint,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildInfoCard(
    BuildContext context, {
    required String text,
    required IconData icon,
    required Color textColor,
    required Color surfaceColor,
  }) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 13),
      decoration: BoxDecoration(
        color: surfaceColor,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: AppTheme.borderColor(context)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 18, color: AppColors.primaryDark),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontFamily: AppFonts.bodyFont, fontSize: 14, fontWeight: FontWeight.w500, color: textColor, height: 1.35),
            ),
          ),
        ],
      ),
    );
  }
}
