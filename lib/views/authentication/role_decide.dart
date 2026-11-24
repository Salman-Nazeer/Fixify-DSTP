import 'package:fixify/constant/colors.dart';
import 'package:fixify/constant/fontsapp.dart';
import 'package:fixify/controllers/auth_controller.dart';
import 'package:fixify/views/authentication/create_account.dart';
import 'package:fixify/views/coustomeWidgts/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

final controller = Get.find<AuthController>();

class RoleDecide extends StatelessWidget {
  const RoleDecide({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightBackground,

      appBar: customAppBar(context, title: 'Welcome back'),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                      style: const TextStyle(
                        fontFamily: AppFonts.headingFont,
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: AppColors.white,
                      ),
                    ),
                    Text(
                      'Right at your doorstep.',
                      style: const TextStyle(
                        fontFamily: AppFonts.headingFont,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: AppColors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 28),
              Text(
                'How will you use Kaamly?',
                style: const TextStyle(
                  fontFamily: AppFonts.headingFont,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: AppColors.secondary,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                'One app. A better day for everyone.',
                style: const TextStyle(
                  fontFamily: AppFonts.bodyFont,
                  fontSize: 14,
                  color: AppColors.lightTextSecondary,
                ),
              ),
              const SizedBox(height: 20),
              Obx(
                () => GestureDetector(
                  onTap: () => controller.selectRole('Customer'),
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: controller.selectedRole.value == 'Customer'
                          ? AppColors.mint
                          : AppColors.lightSurface,
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color: controller.selectedRole.value == 'Customer'
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
                                style: const TextStyle(
                                  fontFamily: AppFonts.headingFont,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.secondary,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                'Find trusted help for your home.',
                                style: const TextStyle(
                                  fontFamily: AppFonts.bodyFont,
                                  fontSize: 12,
                                  color: AppColors.lightTextSecondary,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Icon(
                          controller.selectedRole.value == 'Customer'
                              ? Icons.check_circle
                              : Icons.radio_button_unchecked,
                          color: AppColors.primaryDark,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Obx(
                () => GestureDetector(
                  onTap: () => controller.selectRole('Service Provider'),
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: controller.selectedRole.value == 'Service Provider'
                          ? AppColors.mint
                          : AppColors.lightSurface,
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color:
                            controller.selectedRole.value == 'Service Provider'
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
                                style: const TextStyle(
                                  fontFamily: AppFonts.headingFont,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.secondary,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                'Offer your services to nearby customers.',
                                style: const TextStyle(
                                  fontFamily: AppFonts.bodyFont,
                                  fontSize: 12,
                                  color: AppColors.lightTextSecondary,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Icon(
                          controller.selectedRole.value == 'Service Provider'
                              ? Icons.check_circle
                              : Icons.radio_button_unchecked,
                          color: AppColors.primaryDark,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Obx(
                () => SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: ElevatedButton(
                    onPressed: () => Get.to(() => const CreateAccount()),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primaryDark,
                      foregroundColor: AppColors.white,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Continue as ${controller.selectedRole.value}',
                            style: const TextStyle(
                              fontFamily: AppFonts.headingFont,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: AppColors.white,
                            ),
                          ),
                        ),
                        const Icon(Icons.arrow_forward, color: AppColors.mint),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 18),
              Center(
                child: Text(
                  'Find trusted services for your home.',
                  style: const TextStyle(
                    fontFamily: AppFonts.bodyFont,
                    fontSize: 11,
                    color: AppColors.lightTextSecondary,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
