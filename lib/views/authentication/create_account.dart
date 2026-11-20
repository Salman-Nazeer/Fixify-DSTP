import 'package:fixify/constant/colors.dart';
import 'package:fixify/constant/fontsapp.dart';
import 'package:flutter/material.dart';

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

  bool _obscurePassword = true;

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Widget _label(String text, double sw1) {
    return Padding(
      padding: EdgeInsets.only(bottom: sw1 * 0.02),
      child: Text(
        text,
        style: TextStyle(
          fontSize: sw1 * 0.033,
          color: const Color.fromARGB(249, 67, 64, 64),
        ),
      ),
    );
  }

  Widget _field({
    required double sw1,
    required TextEditingController controller,
    required IconData icon,
    required String hint,
    TextInputType keyboardType = TextInputType.text,
    bool obscure = false,
    Widget? suffix,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(235, 255, 255, 255),
        borderRadius: BorderRadius.circular(18),
      ),
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        obscureText: obscure,
        style: TextStyle(fontSize: sw1 * 0.037),
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(
            color: const Color.fromARGB(249, 67, 64, 64).withOpacity(0.5),
          ),
          prefixIcon: Icon(
            icon,
            size: sw1 * 0.055,
            color: const Color.fromARGB(249, 67, 64, 64),
          ),
          suffixIcon: suffix,
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(
            horizontal: sw1 * 0.04,
            vertical: sw1 * 0.045,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // double sh1 = MediaQuery.of(context).size.height;
    double sw1 = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(136, 235, 235, 235),
        appBar: AppBar(
          backgroundColor: AppColors.lightBackground,
          centerTitle: false,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_outlined,
              color: AppColors.primaryDark,
            ),
          ),
          title: Text(
            'Create account',
            style: AppFonts.titleLarge.copyWith(
              color: AppColors.secondary,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Role badge
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: sw1 * 0.03,
                          vertical: sw1 * 0.02,
                        ),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(237, 207, 207, 207),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          "CUSTOMER",
                          style: TextStyle(
                            fontSize: sw1 * 0.03,
                            fontWeight: FontWeight.w600,
                            color: AppColors.primaryDark,
                          ),
                        ),
                      ),
                      SizedBox(height: sw1 * 0.05),

                      // Heading
                      Text(
                        "A little about you",
                        style: TextStyle(
                          fontSize: sw1 * 0.07,
                          fontWeight: FontWeight.bold,
                          color: AppColors.primaryDark,
                        ),
                      ),
                      SizedBox(height: sw1 * 0.02),
                      Text(
                        "Trusted local services start here.",
                        style: TextStyle(
                          fontSize: sw1 * 0.04,
                          color: const Color.fromARGB(249, 67, 64, 64),
                        ),
                      ),
                      SizedBox(height: sw1 * 0.07),

                      // Full name
                      _label("Full name", sw1),
                      _field(
                        sw1: sw1,
                        controller: _nameController,
                        icon: Icons.person_outline,
                        hint: "Aarav Sharma",
                      ),
                      SizedBox(height: sw1 * 0.045),

                      // Email
                      _label("Email address", sw1),
                      _field(
                        sw1: sw1,
                        controller: _emailController,
                        icon: Icons.mail_outline,
                        hint: "aarav.sharma@gmail.com",
                        keyboardType: TextInputType.emailAddress,
                      ),
                      SizedBox(height: sw1 * 0.045),

                      // Phone
                      _label("Phone number", sw1),
                      _field(
                        sw1: sw1,
                        controller: _phoneController,
                        icon: Icons.phone_outlined,
                        hint: "+91  98765 43210",
                        keyboardType: TextInputType.phone,
                      ),
                      SizedBox(height: sw1 * 0.045),

                      // Password
                      _label("Password", sw1),
                      _field(
                        sw1: sw1,
                        controller: _passwordController,
                        icon: Icons.lock_outline,
                        hint: "Enter password",
                        obscure: _obscurePassword,
                        suffix: IconButton(
                          onPressed: () {
                            setState(() {
                              _obscurePassword = !_obscurePassword;
                            });
                          },
                          icon: Icon(
                            _obscurePassword
                                ? Icons.visibility_off_outlined
                                : Icons.visibility_outlined,
                            size: sw1 * 0.05,
                            color: const Color.fromARGB(249, 67, 64, 64),
                          ),
                        ),
                      ),
                      SizedBox(height: sw1 * 0.05),

                      // Terms
                      Text(
                        "By signing up, you agree to our Terms & Privacy Policy.",
                        style: TextStyle(
                          fontSize: sw1 * 0.03,
                          color: const Color.fromARGB(249, 67, 64, 64),
                        ),
                      ),
                      SizedBox(height: sw1 * 0.04),

                      // Create account button
                      GestureDetector(
                        onTap: () {
                        },
                        child: Container(
                          width: sw1 * 1,
                          height: sw1 * 0.15,
                          decoration: BoxDecoration(
                            color: AppColors.primaryDark,
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15.0,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  "Create account",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: sw1 * 0.045,
                                    color: Colors.white,
                                  ),
                                ),
                                const Spacer(),
                                const Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: sw1 * 0.05),
                    ],
                  ),
                ),
              ),
              Text(
                "Protected with end-to-end encryption",
                style: TextStyle(
                  fontSize: sw1 * 0.03,
                  color: const Color.fromARGB(249, 67, 64, 64),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
