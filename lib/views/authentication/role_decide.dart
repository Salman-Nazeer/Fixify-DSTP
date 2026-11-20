import 'package:fixify/constant/colors.dart';
import 'package:fixify/constant/fontsapp.dart';
import 'package:flutter/material.dart';

class RoleDecide extends StatefulWidget {
  const RoleDecide({super.key});

  @override
  State<RoleDecide> createState() => _RoleDecideState();
}

class _RoleDecideState extends State<RoleDecide> {
  String selectedRole = 'Customer';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightBackground,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            Text(
              'Welcome to Kaamly',
              style: AppFonts.titleLarge.copyWith(color: AppColors.secondary),
            ),
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: AppColors.primaryDark,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.home_outlined,
                    size: 42,
                    color: AppColors.mint,
                  ),
                  const SizedBox(height: 14),
                  Text(
                    'Good help.',
                    style: AppFonts.headlineMedium.copyWith(
                      color: AppColors.white,
                    ),
                  ),
                  Text(
                    'Right at your doorstep.',
                    style: AppFonts.headlineSmall.copyWith(
                      color: AppColors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 28),
            Text(
              'How will you use Kaamly?',
              style: AppFonts.titleLarge.copyWith(color: AppColors.secondary),
            ),
            const SizedBox(height: 6),
            Text(
              'One app. A better day for everyone.',
              style: AppFonts.bodyMedium.copyWith(
                color: AppColors.lightTextSecondary,
              ),
            ),
            const SizedBox(height: 20),
            InkWell(
              borderRadius: BorderRadius.circular(16),
              onTap: () {
                setState(() {
                  selectedRole = 'Customer';
                });
              },
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: selectedRole == 'Customer'
                      ? AppColors.mint
                      : AppColors.lightSurface,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: selectedRole == 'Customer'
                        ? AppColors.primaryLight
                        : AppColors.lightBorder,
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: AppColors.lightSurface,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Icon(
                        Icons.home_outlined,
                        size: 24,
                        color: AppColors.primaryDark,
                      ),
                    ),
                    const SizedBox(width: 14),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Customer',
                            style: AppFonts.titleMedium.copyWith(
                              color: AppColors.secondary,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Find trusted help for your home.',
                            style: AppFonts.bodySmall.copyWith(
                              color: AppColors.lightTextSecondary,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Icon(
                      selectedRole == 'Customer'
                          ? Icons.check_circle
                          : Icons.radio_button_unchecked,
                      color: AppColors.primaryDark,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),
            InkWell(
              borderRadius: BorderRadius.circular(16),
              onTap: () {
                setState(() {
                  selectedRole = 'Service Provider';
                });
              },
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: selectedRole == 'Service Provider'
                      ? AppColors.mint
                      : AppColors.lightSurface,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: selectedRole == 'Service Provider'
                        ? AppColors.primaryLight
                        : AppColors.lightBorder,
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: AppColors.cloud,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Icon(
                        Icons.handyman_outlined,
                        size: 24,
                        color: AppColors.primaryDark,
                      ),
                    ),
                    const SizedBox(width: 14),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Service provider',
                            style: AppFonts.titleMedium.copyWith(
                              color: AppColors.secondary,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Offer your services to nearby customers.',
                            style: AppFonts.bodySmall.copyWith(
                              color: AppColors.lightTextSecondary,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Icon(
                      selectedRole == 'Service Provider'
                          ? Icons.check_circle
                          : Icons.radio_button_unchecked,
                      color: AppColors.primaryDark,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 52,
              child: ElevatedButton(
                onPressed: null,
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryDark,
                  disabledBackgroundColor: AppColors.primaryDark,
                  disabledForegroundColor: AppColors.white,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Continue as $selectedRole',
                        style: AppFonts.button.copyWith(color: AppColors.white),
                      ),
                    ),
                    const Icon(Icons.arrow_forward, color: AppColors.mint),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 18),
            Center(
              child: Text(
                'Find trusted services for your home.',
                style: AppFonts.caption.copyWith(
                  color: AppColors.lightTextSecondary,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
