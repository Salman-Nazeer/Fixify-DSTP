import 'package:fixify/app/app_theme.dart';
import 'package:fixify/constant/colors.dart';
import 'package:fixify/constant/fontsapp.dart';
import 'package:fixify/controllers/mybooking_controller.dart';
import 'package:fixify/views/coustomeWidgts/app_bar.dart';
import 'package:fixify/views/coustomer/track_booking_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

final BookingController bookingController = Get.put(BookingController());

final today = DateTime.now();
final dates = List.generate(
  5,
  (index) => DateTime(today.year, today.month, today.day + index),
);

class BookingsScreen extends StatefulWidget {
  const BookingsScreen({super.key});

  @override
  State<BookingsScreen> createState() => _BookingsScreenState();
}

class _BookingsScreenState extends State<BookingsScreen> {
  final TextEditingController _problemController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();

  @override
  void dispose() {
    _problemController.dispose();
    _addressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textColor = AppTheme.primaryTextColor(context);
    final secondaryTextColor = AppTheme.secondaryTextColor(context);
    final surfaceColor = AppTheme.surfaceColor(context);
    final borderColor = AppTheme.borderColor(context);
    final hintColor = AppTheme.hintColor(context);

    double screenWidth = MediaQuery.of(context).size.width;
    double scale = screenWidth / 390;

    return Scaffold(
      backgroundColor: AppTheme.backgroundColor(context),

      appBar: customAppBar(context, title: 'My bookings'),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20 * scale,
              vertical: 12 * scale,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // SELECTED SERVICE
                Text(
                  'Selected service',
                  style: AppFonts.labelMedium.copyWith(
                    color: secondaryTextColor,
                  ),
                ),

                SizedBox(height: 7 * scale),

                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(
                    horizontal: 14 * scale,
                    vertical: 13 * scale,
                  ),
                  decoration: BoxDecoration(
                    color: surfaceColor,
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(color: borderColor),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.handyman_outlined,
                        size: 20 * scale,
                        color: AppColors.primaryDark,
                      ),

                      SizedBox(width: 10 * scale),

                      Expanded(
                        child: Text(
                          'Tap & leak repair · Greenline Plumbing',
                          style: AppFonts.bodyMedium.copyWith(
                            color: textColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 16 * scale),

                // DESCRIBE PROBLEM
                Text(
                  'Describe the problem',
                  style: AppFonts.labelMedium.copyWith(
                    color: secondaryTextColor,
                  ),
                ),

                SizedBox(height: 7 * scale),

                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(
                    horizontal: 14 * scale,
                    vertical: 10 * scale,
                  ),
                  decoration: BoxDecoration(
                    color: surfaceColor,
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(color: borderColor),
                  ),
                  child: TextField(
                    controller: _problemController,
                    maxLines: 3,
                    style: AppFonts.bodyMedium.copyWith(color: textColor),
                    decoration: InputDecoration(
                      isCollapsed: true,
                      border: InputBorder.none,
                      hintText: 'Describe the issue...',
                      hintStyle: AppFonts.hint.copyWith(color: hintColor),
                    ),
                  ),
                ),

                SizedBox(height: 16 * scale),

                // SERVICE ADDRESS
                Text(
                  'Service address',
                  style: AppFonts.labelMedium.copyWith(
                    color: secondaryTextColor,
                  ),
                ),

                SizedBox(height: 7 * scale),

                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 12 * scale),
                  decoration: BoxDecoration(
                    color: surfaceColor,
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(color: borderColor),
                  ),
                  child: TextField(
                    controller: _addressController,
                    style: AppFonts.bodyMedium.copyWith(color: textColor),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.location_on_outlined,
                        color: hintColor,
                        size: 20 * scale,
                      ),
                      hintText: 'Enter your service address',
                      hintStyle: AppFonts.hint.copyWith(color: hintColor),
                    ),
                  ),
                ),

                SizedBox(height: 18 * scale),

                // CHOOSE DATE
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Choose a date',
                      style: AppFonts.labelMedium.copyWith(
                        color: secondaryTextColor,
                      ),
                    ),

                    IconButton(
                      onPressed: () {
                        bookingController.selectDate(context);
                      },
                      icon: const Icon(
                        Icons.calendar_month_outlined,
                        color: AppColors.primaryDark,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 10 * scale),

                // DATE SELECTION LIST
                Obx(() {
                  DateTime selectedDate = bookingController.selectedDate.value;

                  DateTime startDate = dates.contains(selectedDate)
                      ? today
                      : selectedDate;

                  final bookingDates = List.generate(
                    5,
                    (index) => DateTime(
                      startDate.year,
                      startDate.month,
                      startDate.day + index,
                    ),
                  );

                  return SizedBox(
                    height: 70 * scale,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: bookingDates.length,
                      itemBuilder: (context, index) {
                        final date = bookingDates[index];

                        bool isSelected = date == selectedDate;

                        return Container(
                          width: (screenWidth - 40 * scale) / 5,
                          padding: EdgeInsets.symmetric(horizontal: 4 * scale),
                          child: GestureDetector(
                            onTap: () {
                              bookingController.changeDate(date);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: isSelected
                                    ? AppColors.primaryDark
                                    : surfaceColor,

                                borderRadius: BorderRadius.circular(13),

                                border: Border.all(
                                  color: isSelected
                                      ? AppColors.primaryDark
                                      : borderColor,
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    bookingController.weekdays[date.weekday -
                                        1],
                                    style: AppFonts.labelSmall.copyWith(
                                      color: isSelected
                                          ? AppColors.mint
                                          : secondaryTextColor,
                                    ),
                                  ),

                                  SizedBox(height: 4 * scale),

                                  Text(
                                    '${date.day}',
                                    style: AppFonts.titleMedium.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: isSelected
                                          ? AppColors.white
                                          : textColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  );
                }),

                SizedBox(height: 8 * scale),

                // DISPLAY SELECTED DATE
                Obx(
                  () => Text(
                    'Selected date: '
                    '${bookingController.selectedDate.value.day}/'
                    '${bookingController.selectedDate.value.month}/'
                    '${bookingController.selectedDate.value.year}',
                    style: AppFonts.caption.copyWith(color: secondaryTextColor),
                  ),
                ),

                SizedBox(height: 18 * scale),

                // CHOOSE TIME
                Text(
                  'Choose a time',
                  style: AppFonts.labelMedium.copyWith(
                    color: secondaryTextColor,
                  ),
                ),

                SizedBox(height: 10 * scale),

                // TIME SELECTION
                Obx(
                  () => SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        bookingController.selectTime(context);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: surfaceColor,
                        foregroundColor: AppColors.primaryDark,
                        elevation: 0,

                        padding: EdgeInsets.symmetric(vertical: 14 * scale),

                        side: BorderSide(color: borderColor),

                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(11),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.schedule_outlined,
                            color: AppColors.primaryDark,
                            size: 20 * scale,
                          ),

                          SizedBox(width: 10 * scale),

                          Text(
                            bookingController.selectedTime.value.format(
                              context,
                            ),
                            style: AppFonts.bodyMedium.copyWith(
                              color: textColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 12 * scale),

                Text(
                  'Choose the date and time that works for your booking.',
                  style: AppFonts.caption.copyWith(color: secondaryTextColor),
                ),

                SizedBox(height: 20 * scale),

                // BOOK SERVICE BUTTON
                SizedBox(
                  width: double.infinity,
                  height: 52 * scale,
                  child: ElevatedButton(
                    onPressed: () {
                      bookingController.bookService(
                        problem: _problemController.text,
                        address: _addressController.text,
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primaryDark,
                      foregroundColor: AppColors.white,
                      elevation: 0,

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),

                      padding: EdgeInsets.symmetric(horizontal: 18 * scale),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Book service',
                          style: AppFonts.button.copyWith(
                            color: AppColors.white,
                          ),
                        ),

                        Icon(
                          Icons.arrow_forward_rounded,
                          size: 20 * scale,
                          color: AppColors.mint,
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 12 * scale),

                // TRACK BOOKING BUTTON
                SizedBox(
                  width: double.infinity,
                  height: 52 * scale,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(() => TrackBookingScreen());
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primaryDark,
                      foregroundColor: AppColors.white,
                      elevation: 0,

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),

                      padding: EdgeInsets.symmetric(horizontal: 18 * scale),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Track Booking',
                          style: AppFonts.button.copyWith(
                            color: AppColors.white,
                          ),
                        ),

                        Icon(
                          Icons.arrow_forward_rounded,
                          size: 20 * scale,
                          color: AppColors.mint,
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 20 * scale),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
