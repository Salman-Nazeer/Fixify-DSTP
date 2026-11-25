import 'package:fixify/app/app_theme.dart';
import 'package:fixify/views/coustomeWidgts/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:fixify/constant/colors.dart';
import 'package:fixify/constant/fontsapp.dart';

class RateYourServiceScreen extends StatefulWidget {
  const RateYourServiceScreen({super.key});

  @override
  State<RateYourServiceScreen> createState() => _RateYourServiceScreenState();
}

class _RateYourServiceScreenState extends State<RateYourServiceScreen> {
  int selectedRating = 5;

  final Set<String> selectedTags = {'On time', 'Professional'};

  final TextEditingController reviewController = TextEditingController();

  @override
  void dispose() {
    reviewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double width = size.width;

    final bool isSmall = width < 360;

    final double horizontalPadding = (width * 0.055)
        .clamp(16.0, 28.0)
        .toDouble();
    final Color textColor = AppTheme.primaryTextColor(context);
    final Color secondaryTextColor = AppTheme.secondaryTextColor(context);
    final Color surfaceColor = AppTheme.surfaceColor(context);
    final Color borderColor = AppTheme.borderColor(context);
    final Color accentColor = AppTheme.isDark(context)
        ? AppColors.primaryLight
        : AppColors.primaryDark;

    return Scaffold(
      backgroundColor: AppTheme.backgroundColor(context),
      resizeToAvoidBottomInset: true,

      // ---------------- APP BAR ----------------
      appBar: customAppBar(context, title: 'Rate your service'),

      // ---------------- BODY ----------------
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 540),
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                horizontalPadding,
                14,
                horizontalPadding,
                25,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // -------- SERVICE COMPLETED BADGE --------
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.mint,
                      borderRadius: BorderRadius.circular(9),
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.check_rounded,
                          color: AppColors.primaryDark,
                          size: 13,
                        ),
                        SizedBox(width: 5),
                        Text(
                          'SERVICE COMPLETED',
                          style: TextStyle(
                            fontFamily: AppFonts.bodyFont,
                            fontSize: 10,
                            fontWeight: FontWeight.w700,
                            color: AppColors.primaryDark,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 32),

                  // -------- MAIN HEADING --------
                  Text(
                    'How did we do?',
                    style: TextStyle(
                      fontFamily: AppFonts.headingFont,
                      fontSize: isSmall ? 25 : 28,
                      fontWeight: FontWeight.w700,
                      color: textColor,
                    ),
                  ),

                  const SizedBox(height: 9),

                  Text(
                    'Tap & leak repair · Greenline Plumbing',
                    style: TextStyle(
                      fontFamily: AppFonts.bodyFont,
                      fontSize: isSmall ? 12 : 14,
                      color: secondaryTextColor,
                    ),
                  ),

                  const SizedBox(height: 4),

                  // Text(
                  //   'Booking #KM2048 · 19 Nov',
                  //   style: TextStyle(
                  //     fontSize: isSmall ? 11 : 12,
                  //     color: AppColors.lightTextSecondary,
                  //   ),
                  // ),
                  const SizedBox(height: 30),

                  // ---------------- STAR RATING ----------------
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(5, (index) {
                      return IconButton(
                        onPressed: () {
                          setState(() {
                            selectedRating = index + 1;
                          });
                        },
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(
                          minWidth: 42,
                          minHeight: 42,
                        ),
                        icon: Icon(
                          index < selectedRating
                              ? Icons.star_rounded
                              : Icons.star_outline_rounded,
                          size: isSmall ? 31 : 35,
                          color: accentColor,
                        ),
                      );
                    }),
                  ),

                  const SizedBox(height: 14),

                  // -------- RATING MESSAGE --------
                  Center(
                    child: Text(
                      selectedRating == 5
                          ? 'Excellent! That made our day.'
                          : selectedRating == 4
                          ? 'Great! Thanks for your feedback.'
                          : selectedRating == 3
                          ? 'Thanks for sharing your thoughts.'
                          : selectedRating == 2
                          ? 'We can do better.'
                          : 'Sorry to hear that.',
                      style: TextStyle(
                        fontFamily: AppFonts.bodyFont,
                        fontSize: isSmall ? 12 : 14,
                        fontWeight: FontWeight.w500,
                        color: accentColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),

                  const SizedBox(height: 31),

                  // ---------------- FEEDBACK TAGS ----------------
                  Text(
                    'What went well?',
                    style: TextStyle(
                      fontFamily: AppFonts.bodyFont,
                      fontSize: isSmall ? 12 : 14,
                      fontWeight: FontWeight.w500,
                      color: secondaryTextColor,
                    ),
                  ),

                  const SizedBox(height: 12),

                  Row(
                    children: [
                      // -------- ON TIME --------
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              if (selectedTags.contains('On time')) {
                                selectedTags.remove('On time');
                              } else {
                                selectedTags.add('On time');
                              }
                            });
                          },
                          child: Container(
                            height: 32,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: selectedTags.contains('On time')
                                  ? AppColors.mint
                                  : surfaceColor,
                              borderRadius: BorderRadius.circular(9),
                              border: Border.all(color: borderColor),
                            ),
                            child: Text(
                              'On time',
                              style: TextStyle(
                                fontFamily: AppFonts.bodyFont,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: selectedTags.contains('On time')
                                    ? AppColors.primaryDark
                                    : textColor,
                              ),  
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(width: 8),

                      // -------- PROFESSIONAL --------
                      Expanded(
                        flex: 2,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              if (selectedTags.contains('Professional')) {
                                selectedTags.remove('Professional');
                              } else {
                                selectedTags.add('Professional');
                              }
                            });
                          },
                          child: Container(
                            height: 32,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: selectedTags.contains('Professional')
                                  ? AppColors.mint
                                  : surfaceColor,
                              borderRadius: BorderRadius.circular(9),
                              border: Border.all(color: borderColor),
                            ),
                            child: Text(
                              'Professional',
                              style: TextStyle(
                                fontFamily: AppFonts.bodyFont,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: selectedTags.contains('Professional')
                                    ? AppColors.primaryDark
                                    : textColor,
                              ),
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(width: 8),

                      // -------- TIDY WORK --------
                      Expanded(
                        flex: 2,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              if (selectedTags.contains('Tidy work')) {
                                selectedTags.remove('Tidy work');
                              } else {
                                selectedTags.add('Tidy work');
                              }
                            });
                          },
                          child: Container(
                            height: 32,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: selectedTags.contains('Tidy work')
                                  ? AppColors.mint
                                  : surfaceColor,
                              borderRadius: BorderRadius.circular(9),
                              border: Border.all(color: borderColor),
                            ),
                            child: Text(
                              'Tidy work',
                              style: TextStyle(
                                fontFamily: AppFonts.bodyFont,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: selectedTags.contains('Tidy work')
                                    ? AppColors.primaryDark
                                    : textColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 25),

                  // ---------------- REVIEW FIELD ----------------
                  Text(
                    'Write a review',
                    style: TextStyle(
                      fontFamily: AppFonts.bodyFont,
                      fontSize: isSmall ? 12 : 14,
                      fontWeight: FontWeight.w500,
                      color: secondaryTextColor,
                    ),
                  ),

                  const SizedBox(height: 12),

                  TextField(
                    controller: reviewController,
                    textAlignVertical: TextAlignVertical.center,
                    maxLines: 3,
                    minLines: 3,
                    maxLength: 500,
                    onChanged: (value) {},
                    style: TextStyle(
                      fontFamily: AppFonts.bodyFont,
                      fontSize: isSmall ? 13 : 14,
                      height: 1.4,
                      color: textColor,
                    ),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: borderColor, width: 1),
                      ),
                      contentPadding: EdgeInsets.fromLTRB(15, 16, 15, 4),
                      hintText: 'Share your experience...',
                      hintStyle: TextStyle(
                        fontFamily: AppFonts.bodyFont,
                        fontSize: isSmall ? 13 : 14,
                        height: 1.4,
                        color: AppTheme.hintColor(context),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),

      // ---------------- BOTTOM AREA ----------------
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // -------- SUBMIT BUTTON --------
          Container(
            color: AppTheme.backgroundColor(context),
            padding: EdgeInsets.fromLTRB(
              horizontalPadding,
              8,
              horizontalPadding,
              17,
            ),
            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 540),
                child: SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: ElevatedButton(
                    onPressed: () {
                      // Connect your review submission API here.
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primaryDark,
                      foregroundColor: AppColors.white,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Submit review & feedback',
                          style: TextStyle(
                            fontFamily: AppFonts.headingFont,
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_rounded,
                          size: 21,
                          color: AppColors.mint,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
