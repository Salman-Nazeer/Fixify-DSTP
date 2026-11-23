import 'package:fixify/constant/colors.dart';
import 'package:fixify/constant/fontsapp.dart';
import 'package:fixify/controllers/auth_controller.dart';
import 'package:fixify/views/authentication/create_account.dart';
import 'package:fixify/views/authentication/forgot_screen.dart';
import 'package:fixify/views/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final AuthController controller = Get.find<AuthController>();

    return Scaffold(
      backgroundColor: AppColors.lightBackground,
      appBar: AppBar(
        backgroundColor: AppColors.lightBackground,
        surfaceTintColor: AppColors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: AppColors.primaryDark,
          ),
        ),
        title: Text(
          'Welcome back',
          style: const TextStyle(fontFamily: AppFonts.headingFont, fontSize: 18, fontWeight: FontWeight.w600, color: AppColors.secondary),
        ),
      ),
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(20, 12, 20, 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Your home.',
                style: const TextStyle(fontFamily: AppFonts.headingFont, fontSize: 28, fontWeight: FontWeight.w600, color: AppColors.primaryDark),
              ),
              Text(
                'In good hands.',
                style: const TextStyle(fontFamily: AppFonts.headingFont, fontSize: 28, fontWeight: FontWeight.w600, color: AppColors.primaryDark),
              ),
              const SizedBox(height: 12),
              Obx(
                () => Text(
                  'Sign in to continue as ${controller.selectedRole.value.toLowerCase()}.',
                  style: const TextStyle(fontFamily: AppFonts.bodyFont, fontSize: 14, color: AppColors.lightTextSecondary),
                ),
              ),
              const SizedBox(height: 28),
              Text(
                'Email or phone number',
                style: const TextStyle(fontFamily: AppFonts.bodyFont, fontSize: 12, fontWeight: FontWeight.w500, color: AppColors.lightTextPrimary),
              ),
              const SizedBox(height: 8),
              TextField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                style: AppFonts.input,
                decoration: InputDecoration(
                  hintText: 'aarav.sharma@gmail.com',
                  hintStyle: const TextStyle(fontFamily: AppFonts.bodyFont, fontSize: 13, color: AppColors.lightTextHint),
                  filled: true,
                  fillColor: AppColors.lightSurface,
                  prefixIcon: const Icon(
                    Icons.mail_outline_rounded,
                    color: AppColors.lightTextSecondary,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: const BorderSide(color: AppColors.lightBorder),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: const BorderSide(
                      color: AppColors.primary,
                      width: 1.5,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 18),
              Text(
                'Password',
                style: const TextStyle(fontFamily: AppFonts.bodyFont, fontSize: 12, fontWeight: FontWeight.w500, color: AppColors.lightTextPrimary),
              ),
              const SizedBox(height: 8),
              Obx(
                () => TextField(
                  controller: _passwordController,
                  obscureText: controller.isObscured.value,
                  style: AppFonts.input,
                  decoration: InputDecoration(
                    hintText: 'Enter password',
                    hintStyle: const TextStyle(fontFamily: AppFonts.bodyFont, fontSize: 13, color: AppColors.lightTextHint),
                    filled: true,
                    fillColor: AppColors.lightSurface,
                    prefixIcon: const Icon(
                      Icons.lock_outline_rounded,
                      color: AppColors.lightTextSecondary,
                    ),
                    suffixIcon: IconButton(
                      onPressed: controller.changeObscured,
                      icon: Icon(
                        controller.isObscured.value
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined,
                        color: AppColors.lightTextSecondary,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: const BorderSide(
                        color: AppColors.lightBorder,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: const BorderSide(
                        color: AppColors.primary,
                        width: 1.5,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () => Get.to(() => const ForgotScreen()),
                    style: TextButton.styleFrom(
                      foregroundColor: AppColors.primaryDark,
                    ),
                    child: Text(
                      'Forgot password?',
                      style: const TextStyle(fontFamily: AppFonts.bodyFont, fontSize: 12, fontWeight: FontWeight.w500, color: AppColors.primaryDark),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              SizedBox(
                width: double.infinity,
                height: 52,
                child: ElevatedButton(
                  onPressed: () => Get.offAll(() => const Navbar()),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryDark,
                    foregroundColor: AppColors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: Row(
                    children: [
                      Text(
                        'Sign in',
                        style: const TextStyle(fontFamily: AppFonts.headingFont, fontSize: 14, fontWeight: FontWeight.w600, color: AppColors.white),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.arrow_forward_rounded,
                        color: AppColors.mint,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  Expanded(child: Container(height: 1, color: AppColors.lightDivider)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Text(
                      'or continue with',
                      style: const TextStyle(fontFamily: AppFonts.bodyFont, fontSize: 11, color: AppColors.lightTextSecondary),
                    ),
                  ),
                  Expanded(child: Container(height: 1, color: AppColors.lightDivider)),
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                height: 52,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    foregroundColor: AppColors.primaryDark,
                    side: const BorderSide(color: AppColors.lightBorder),
                    backgroundColor: AppColors.lightSurface,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.g_mobiledata_rounded, size: 28),
                      const SizedBox(width: 8),
                      Text(
                        'Google sign in',
                        style: const TextStyle(fontFamily: AppFonts.headingFont, fontSize: 14, fontWeight: FontWeight.w600, color: AppColors.primaryDark),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: TextButton(
                  onPressed: () => Get.to(() => const CreateAccount()),
                  child: Text.rich(
                    TextSpan(
                      text: 'New here?  ',
                      style: const TextStyle(fontFamily: AppFonts.bodyFont, fontSize: 12, color: AppColors.lightTextSecondary),
                      children: [
                        TextSpan(
                          text: 'Create an account',
                          style: const TextStyle(fontFamily: AppFonts.bodyFont, fontSize: 12, fontWeight: FontWeight.w500, color: AppColors.primaryDark),
                        ),
                      ],
                    ),
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
