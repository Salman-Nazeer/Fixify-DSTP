import 'package:fixify/constant/colors.dart';
import 'package:fixify/constant/fontsapp.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final TextEditingController _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double sh1 = MediaQuery.of(context).size.height;
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
            'Forgot password?',
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

                      // Lock icon box
                      Container(
                        width: sw1 * 0.16,
                        height: sw1 * 0.16,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(237, 207, 207, 207),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Icon(
                          Icons.lock_outline,
                          size: sw1 * 0.07,
                          color: AppColors.primaryDark,
                        ),
                      ),
                      SizedBox(height: sw1 * 0.08),

                      // Heading
                      Text(
                        "Let’s get you back in.",
                        style: TextStyle(
                          fontSize: sw1 * 0.065,
                          fontWeight: FontWeight.bold,
                          color: AppColors.primaryDark,
                        ),
                      ),
                      SizedBox(height: sw1 * 0.03),
                      Text(
                        "We’ll send a reset link to your registered\nemail address.",
                        style: TextStyle(
                          fontSize: sw1 * 0.038,
                          color: const Color.fromARGB(249, 67, 64, 64),
                        ),
                      ),
                      SizedBox(height: sw1 * 0.08),

                      // Email label
                      Padding(
                        padding: EdgeInsets.only(bottom: sw1 * 0.02),
                        child: Text(
                          "Email address",
                          style: TextStyle(
                            fontSize: sw1 * 0.033,
                            color: const Color.fromARGB(249, 67, 64, 64),
                          ),
                        ),
                      ),

                      // Email field
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(235, 255, 255, 255),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: TextField(
                          controller: _emailController,
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(fontSize: sw1 * 0.037),
                          decoration: InputDecoration(
                            hintText: "aarav.sharma@gmail.com",
                            hintStyle: const TextStyle(
                              color: Color.fromARGB(120, 67, 64, 64),
                            ),
                            prefixIcon: Icon(
                              Icons.mail_outline,
                              size: sw1 * 0.055,
                              color: const Color.fromARGB(249, 67, 64, 64),
                            ),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: sw1 * 0.04,
                              vertical: sw1 * 0.045,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: sw1 * 0.08),

                      // Send reset link button
                      GestureDetector(
                        onTap: () {
                          // TODO: send reset link logic
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
                                  "Send reset link",
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
                      SizedBox(height: sw1 * 0.06),

                      // Phone alternative card
                      Container(
                        width: sw1 * 1,
                        padding: EdgeInsets.all(sw1 * 0.04),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(237, 207, 207, 207),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Using your phone instead?",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: sw1 * 0.04,
                                color: AppColors.primaryDark,
                              ),
                            ),
                            SizedBox(height: sw1 * 0.03),
                            GestureDetector(
                              onTap: () {
                                // TODO: verification code via SMS
                              },
                              child: Text(
                                "Get a verification code via SMS →",
                                style: TextStyle(
                                  fontSize: sw1 * 0.033,
                                  color: AppColors.primaryDark,
                                ),
                              ),
                            ),
                          ],
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
