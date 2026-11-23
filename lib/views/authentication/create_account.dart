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

  final AuthController controller = Get.find<AuthController>();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double scale = width / 390;

    return Scaffold(
      backgroundColor: AppColors.lightBackground,

      // APP BAR
      appBar: AppBar(
        backgroundColor: AppColors.lightBackground,
        surfaceTintColor: AppColors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: AppColors.primaryDark,
          ),
        ),
        title: Text(
          'Create account',
          style: const TextStyle(fontFamily: AppFonts.headingFont, fontSize: 18, fontWeight: FontWeight.w600, color: AppColors.secondary),
        ),
      ),

      // BODY
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20 * scale,
              vertical: 12 * scale,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // SELECTED ROLE
                Obx(
                  () => Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 12 * scale,
                      vertical: 8 * scale,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.mint,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      controller.selectedRole.value.toUpperCase(),
                      style: const TextStyle(fontFamily: AppFonts.bodyFont, fontSize: 12, fontWeight: FontWeight.w500, color: AppColors.primaryDark),
                    ),
                  ),
                ),

                SizedBox(height: 20 * scale),

                // HEADING
                Text(
                  'A little about you',
                  style: const TextStyle(fontFamily: AppFonts.headingFont, fontSize: 24, fontWeight: FontWeight.bold, color: AppColors.primaryDark),
                ),

                SizedBox(height: 6 * scale),

                Text(
                  'Trusted local services start here.',
                  style: const TextStyle(fontFamily: AppFonts.bodyFont, fontSize: 14, color: AppColors.lightTextSecondary),
                ),

                SizedBox(height: 24 * scale),

                // FULL NAME
                Text(
                  'Full name',
                  style: const TextStyle(fontFamily: AppFonts.bodyFont, fontSize: 12, fontWeight: FontWeight.w500, color: AppColors.lightTextPrimary),
                ),

                SizedBox(height: 8 * scale),

                TextField(
                  controller: _nameController,
                  style: AppFonts.input,
                  decoration: InputDecoration(
                    hintText: 'Aarav Sharma',
                    hintStyle: const TextStyle(fontFamily: AppFonts.bodyFont, fontSize: 13, color: AppColors.lightTextHint),
                    filled: true,
                    fillColor: AppColors.lightSurface,
                    prefixIcon: const Icon(
                      Icons.person_outline_rounded,
                      color: AppColors.lightTextSecondary,
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

                SizedBox(height: 16 * scale),

                // EMAIL ADDRESS
                Text(
                  'Email address',
                  style: const TextStyle(fontFamily: AppFonts.bodyFont, fontSize: 12, fontWeight: FontWeight.w500, color: AppColors.lightTextPrimary),
                ),

                SizedBox(height: 8 * scale),

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

                SizedBox(height: 16 * scale),

                // PHONE NUMBER
                Text(
                  'Phone number',
                  style: const TextStyle(fontFamily: AppFonts.bodyFont, fontSize: 12, fontWeight: FontWeight.w500, color: AppColors.lightTextPrimary),
                ),

                SizedBox(height: 8 * scale),

                TextField(
                  controller: _phoneController,
                  keyboardType: TextInputType.phone,
                  style: AppFonts.input,
                  decoration: InputDecoration(
                    hintText: '+91 98765 43210',
                    hintStyle: const TextStyle(fontFamily: AppFonts.bodyFont, fontSize: 13, color: AppColors.lightTextHint),
                    filled: true,
                    fillColor: AppColors.lightSurface,
                    prefixIcon: const Icon(
                      Icons.phone_outlined,
                      color: AppColors.lightTextSecondary,
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

                SizedBox(height: 16 * scale),

                // PASSWORD
                Text(
                  'Password',
                  style: const TextStyle(fontFamily: AppFonts.bodyFont, fontSize: 12, fontWeight: FontWeight.w500, color: AppColors.lightTextPrimary),
                ),

                SizedBox(height: 8 * scale),

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
                        onPressed: () {
                          controller.changeObscured();
                        },
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

                SizedBox(height: 18 * scale),

                // TERMS AND PRIVACY POLICY
                Text(
                  'By signing up, you agree to our Terms & Privacy Policy.',
                  style: const TextStyle(fontFamily: AppFonts.bodyFont, fontSize: 11, color: AppColors.lightTextSecondary),
                ),

                SizedBox(height: 18 * scale),

                // CREATE ACCOUNT BUTTON
                SizedBox(
                  width: double.infinity,
                  height: 52 * scale,
                  child: ElevatedButton(
                    onPressed: () {
                      // Register API will be called here.
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primaryDark,
                      foregroundColor: AppColors.white,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Create account',
                          style: const TextStyle(fontFamily: AppFonts.headingFont, fontSize: 14, fontWeight: FontWeight.w600, color: AppColors.white),
                        ),
                        const Icon(
                          Icons.arrow_forward_rounded,
                          color: AppColors.mint,
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 24 * scale),

                // FOOTER
                Center(
                  child: Text(
                    'Your account information is private.',
                    style: const TextStyle(fontFamily: AppFonts.bodyFont, fontSize: 11, color: AppColors.lightTextSecondary),
                  ),
                ),

                SizedBox(height: 12 * scale),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
