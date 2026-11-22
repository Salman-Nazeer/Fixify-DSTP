import 'package:fixify/app/app_theme.dart';
import 'package:fixify/constant/colors.dart';
import 'package:fixify/views/coustomer/booking.dart';
import 'package:fixify/views/coustomer/dashboard.dart';
import 'package:fixify/views/coustomer/explor.dart';
import 'package:fixify/views/coustomer/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  final List<Widget> myScreenList = [
    const DashboardScreen(),
    const ExploreServicesScreen(),
    const BookingsScreen(),
    const ProfileScreen(),
  ];

  RxInt myScreenIndex = 0.obs;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isDarkMode = AppTheme.isDark(context);
    final selectedColor = isDarkMode
        ? AppColors.primaryLight
        : AppColors.primaryDark;
    final unselectedColor = AppTheme.secondaryTextColor(context);

    final selectedFontSize = (screenWidth * 0.031).clamp(10.0, 14.0);
    final unselectedFontSize = (screenWidth * 0.028).clamp(9.0, 12.0);

    return Scaffold(
      backgroundColor: AppTheme.backgroundColor(context),

      body: Obx(() => myScreenList[myScreenIndex.value]),

      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: myScreenIndex.value,

          onTap: (index) {
            myScreenIndex.value = index;
          },

          backgroundColor: AppTheme.surfaceColor(context),

          selectedItemColor: selectedColor,
          unselectedItemColor: unselectedColor,

          selectedLabelStyle: TextStyle(
            fontSize: selectedFontSize,
            fontWeight: FontWeight.w600,
          ),

          unselectedLabelStyle: TextStyle(
            fontSize: unselectedFontSize,
            fontWeight: FontWeight.w400,
          ),

          selectedIconTheme: IconThemeData(size: 23, color: selectedColor),

          unselectedIconTheme: IconThemeData(size: 22, color: unselectedColor),

          type: BottomNavigationBarType.fixed,
          elevation: 8,

          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home_rounded),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.grid_view_outlined),
              activeIcon: Icon(Icons.grid_view_rounded),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today_outlined),
              activeIcon: Icon(Icons.calendar_today_rounded),
              label: 'Bookings',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_rounded),
              activeIcon: Icon(Icons.person_rounded),
              label: 'Account',
            ),
          ],
        ),
      ),
    );
  }
}
