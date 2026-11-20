import 'package:fixify/constant/colors.dart';
import 'package:fixify/constant/fontsapp.dart';
import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _obscurePassword = true;

  @override
  void dispose() {
    _emailController.dispose();
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
          hintStyle: const TextStyle(color: Color.fromARGB(120, 67, 64, 64)),
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
            'Welcome back',
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
                      SizedBox(height: sw1 * 0.02),

                      // Heading
                      Text(
                        "Your home.",
                        style: TextStyle(
                          fontSize: sw1 * 0.08,
                          fontWeight: FontWeight.bold,
                          color: AppColors.primaryDark,
                        ),
                      ),
                      Text(
                        "In good hands.",
                        style: TextStyle(
                          fontSize: sw1 * 0.08,
                          fontWeight: FontWeight.bold,
                          color: AppColors.primaryDark,
                        ),
                      ),
                      SizedBox(height: sw1 * 0.04),
                      Text(
                        "Sign in to continue as a customer.",
                        style: TextStyle(
                          fontSize: sw1 * 0.038,
                          color: const Color.fromARGB(249, 67, 64, 64),
                        ),
                      ),
                      SizedBox(height: sw1 * 0.07),

                      // Email or phone
                      _label("Email or phone number", sw1),
                      _field(
                        sw1: sw1,
                        controller: _emailController,
                        icon: Icons.mail_outline,
                        hint: "aarav.sharma@gmail.com",
                        keyboardType: TextInputType.emailAddress,
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
                      SizedBox(height: sw1 * 0.03),

                      // Forgot password
                      Align(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                          onTap: () {
                            // TODO: forgot password
                          },
                          child: Text(
                            "Forgot password?",
                            style: TextStyle(
                              fontSize: sw1 * 0.033,
                              fontWeight: FontWeight.w600,
                              color: AppColors.primaryDark,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: sw1 * 0.05),

                      // Sign in button
                      GestureDetector(
                        onTap: () {
                          // TODO: sign in logic
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
                                  "Sign in",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: sw1 * 0.04,
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
                      SizedBox(height: sw1 * 0.045),

                      // Divider
                      Row(
                        children: [
                          const Expanded(
                            child: Divider(
                              color: Color.fromARGB(255, 180, 180, 180),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: sw1 * 0.03,
                            ),
                            child: Text(
                              "or continue with",
                              style: TextStyle(
                                fontSize: sw1 * 0.03,
                                color: const Color.fromARGB(249, 67, 64, 64),
                              ),
                            ),
                          ),
                          const Expanded(
                            child: Divider(
                              color: Color.fromARGB(255, 180, 180, 180),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: sw1 * 0.045),

                      // Google sign in button
                      GestureDetector(
                        onTap: () {
                          // TODO: google sign in
                        },
                        child: Container(
                          width: sw1 * 1,
                          height: sw1 * 0.15,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(235, 255, 255, 255),
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15.0,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  "Google sign in",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: sw1 * 0.037,
                                    color: AppColors.primaryDark,
                                  ),
                                ),
                                const Spacer(),
                                const Icon(
                                  Icons.arrow_forward,
                                  color: AppColors.primaryDark,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: sw1 * 0.06),

                      // Create account link
                      Center(
                        child: GestureDetector(
                          onTap: () {
                            // TODO: navigate to CreateAccount screen
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "New here?  ",
                                style: TextStyle(
                                  fontSize: sw1 * 0.033,
                                  color: AppColors.primaryDark,
                                ),
                              ),
                              Text(
                                "Create an account",
                                style: TextStyle(
                                  fontSize: sw1 * 0.033,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.primaryDark,
                                ),
                              ),
                            ],
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
