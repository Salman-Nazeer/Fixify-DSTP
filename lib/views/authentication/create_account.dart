import 'package:fixify/constant/colors.dart';
import 'package:fixify/constant/fontsapp.dart';
import 'package:fixify/controllers/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  InputDecoration _inputDecoration({
    required String hint,
    required IconData icon,
  }) {
    return InputDecoration(
      hintText: hint,
      hintStyle: AppFonts.hint.copyWith(color: AppColors.lightTextHint),
      filled: true,
      fillColor: AppColors.lightSurface,
      prefixIcon: Icon(icon, color: AppColors.lightTextSecondary),
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
    );
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
          'Create account',
          style: AppFonts.titleLarge.copyWith(
            color: AppColors.secondary,
          ),
        ),
      ),
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(20, 12, 20, 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.mint,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    controller.selectedRole.value.toUpperCase(),
                    style: AppFonts.labelMedium.copyWith(
                      color: AppColors.primaryDark,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'A little about you',
                style: AppFonts.headlineLarge.copyWith(
                  color: AppColors.primaryDark,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                'Trusted local services start here.',
                style: AppFonts.bodyMedium.copyWith(
                  color: AppColors.lightTextSecondary,
                ),
              ),
              const SizedBox(height: 24),
              Text(
                'Full name',
                style: AppFonts.labelMedium.copyWith(
                  color: AppColors.lightTextPrimary,
                ),
              ),
              const SizedBox(height: 8),
              TextField(
                controller: _nameController,
                style: AppFonts.input,
                decoration: _inputDecoration(
                  hint: 'Aarav Sharma',
                  icon: Icons.person_outline_rounded,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Email address',
                style: AppFonts.labelMedium.copyWith(
                  color: AppColors.lightTextPrimary,
                ),
              ),
              const SizedBox(height: 8),
              TextField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                style: AppFonts.input,
                decoration: _inputDecoration(
                  hint: 'aarav.sharma@gmail.com',
                  icon: Icons.mail_outline_rounded,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Phone number',
                style: AppFonts.labelMedium.copyWith(
                  color: AppColors.lightTextPrimary,
                ),
              ),
              const SizedBox(height: 8),
              TextField(
                controller: _phoneController,
                keyboardType: TextInputType.phone,
                style: AppFonts.input,
                decoration: _inputDecoration(
                  hint: '+91 98765 43210',
                  icon: Icons.phone_outlined,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Password',
                style: AppFonts.labelMedium.copyWith(
                  color: AppColors.lightTextPrimary,
                ),
              ),
              const SizedBox(height: 8),
              Obx(
                () => TextField(
                  controller: _passwordController,
                  obscureText: controller.isObscured.value,
                  style: AppFonts.input,
                  decoration: _inputDecoration(
                    hint: 'Enter password',
                    icon: Icons.lock_outline_rounded,
                  ).copyWith(
                    suffixIcon: IconButton(
                      onPressed: controller.changeObscured,
                      icon: Icon(
                        controller.isObscured.value
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined,
                        color: AppColors.lightTextSecondary,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 18),
              Text(
                'By signing up, you agree to our Terms & Privacy Policy.',
                style: AppFonts.caption.copyWith(
                  color: AppColors.lightTextSecondary,
                ),
              ),
              const SizedBox(height: 18),
              SizedBox(
                width: double.infinity,
                height: 52,
                child: ElevatedButton(
                  onPressed: () {},
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
                        'Create account',
                        style: AppFonts.button.copyWith(
                          color: AppColors.white,
                        ),
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
              Center(
                child: Text(
                  'Protected with end-to-end encryption',
                  style: AppFonts.caption.copyWith(
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
