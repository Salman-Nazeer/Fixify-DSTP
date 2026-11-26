import 'package:fixify/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookingController extends GetxController {
  final weekdays = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];

  Rx<DateTime> selectedDate = DateTime.now().obs;

  Rx<TimeOfDay> selectedTime = TimeOfDay.now().obs;

  // Change selected date
  void changeDate(DateTime date) {
    selectedDate.value = date;
  }

  // Select date from calendar
  Future<void> selectDate(BuildContext context) async {
    DateTime today = DateTime.now();

    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: today,
      lastDate: DateTime(today.year + 1, 12, 31),
    );

    if (pickedDate != null) {
      selectedDate.value = pickedDate;
    }
  }

  // Select booking time
  Future<void> selectTime(BuildContext context) async {
    TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: selectedTime.value,
    );

    if (pickedTime != null) {
      selectedTime.value = pickedTime;
    }
  }

  // Booking validation
  void bookService({required String problem, required String address}) {
    if (problem.trim().isEmpty) {
      Get.snackbar('Error', 'Please describe your problem');
      return;
    }

    if (address.trim().isEmpty) {
      Get.snackbar('Error', 'Please enter your address');
      return;
    }

    Get.snackbar(
      'Booking Details Ready',
      'Your booking details are valid.',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: AppColors.primaryDark,
      colorText: AppColors.white,
    );
  }
}
