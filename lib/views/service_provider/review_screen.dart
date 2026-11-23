import 'package:fixify/views/coustomeWidgts/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:fixify/constant/colors.dart';

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

    return Scaffold(
      backgroundColor: AppColors.lightBackground,
      resizeToAvoidBottomInset: true,

      // ---------------- APP BAR ----------------
      appBar: customAppBar(
    context,
    title: 'Rate your service',
  ),

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
                      fontSize: isSmall ? 25 : 28,
                      fontWeight: FontWeight.w700,
                      color: AppColors.lightTextPrimary,
                    ),
                  ),

                  const SizedBox(height: 9),

                  Text(
                    'Tap & leak repair · Greenline Plumbing',
                    style: TextStyle(
                      fontSize: isSmall ? 11 : 12,
                      color: AppColors.lightTextSecondary,
                    ),
                  ),

                  const SizedBox(height: 4),

                  Text(
                    'Booking #KM2048 · 19 Nov',
                    style: TextStyle(
                      fontSize: isSmall ? 11 : 12,
                      color: AppColors.lightTextSecondary,
                    ),
                  ),

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
                          color: AppColors.primaryDark,
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
                        fontSize: isSmall ? 11 : 13,
                        fontWeight: FontWeight.w500,
                        color: AppColors.primaryDark,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),

                  const SizedBox(height: 31),

                  // ---------------- FEEDBACK TAGS ----------------
                  Text(
                    'What went well?',
                    style: TextStyle(
                      fontSize: isSmall ? 11 : 12,
                      color: AppColors.lightTextSecondary,
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
                                  : AppColors.white,
                              borderRadius: BorderRadius.circular(9),
                            ),
                            child: Text(
                              'On time',
                              style: TextStyle(
                                fontSize: isSmall ? 10 : 11,
                                fontWeight: FontWeight.w600,
                                color: AppColors.primaryDark,
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
                                  : AppColors.white,
                              borderRadius: BorderRadius.circular(9),
                            ),
                            child: Text(
                              'Professional',
                              style: TextStyle(
                                fontSize: isSmall ? 10 : 11,
                                fontWeight: FontWeight.w600,
                                color: AppColors.primaryDark,
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
                                  : AppColors.white,
                              borderRadius: BorderRadius.circular(9),
                            ),
                            child: Text(
                              'Tidy work',
                              style: TextStyle(
                                fontSize: isSmall ? 10 : 11,
                                fontWeight: FontWeight.w600,
                                color: AppColors.primaryDark,
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
                      fontSize: isSmall ? 11 : 12,
                      color: AppColors.lightTextSecondary,
                    ),
                  ),

                  const SizedBox(height: 12),

                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.lightSurface,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextField(
                          controller: reviewController,
                          maxLines: 3,
                          minLines: 3,
                          maxLength: 500,
                          buildCounter:
                              (
                                context, {
                                required currentLength,
                                required isFocused,
                                required maxLength,
                              }) {
                                return null;
                              },
                          onChanged: (value) {
                            setState(() {});
                          },
                          style: TextStyle(
                            fontSize: isSmall ? 12 : 13,
                            height: 1.4,
                            color: AppColors.lightTextPrimary,
                          ),
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.fromLTRB(15, 16, 15, 4),
                            hintText: 'Share your experience...',
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 0, 15, 13),
                          child: Text(
                            '${reviewController.text.length} / 500',
                            style: const TextStyle(
                              fontSize: 10,
                              color: AppColors.lightTextSecondary,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),

                  // ---------------- REPORT OPTION ----------------
                  GestureDetector(
                    onTap: () {
                      // Add complaint screen navigation here.
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.outlined_flag_rounded,
                            size: 18,
                            color: AppColors.error,
                          ),

                          const SizedBox(width: 11),

                          Expanded(
                            child: Text(
                              'Report provider or raise a complaint',
                              style: TextStyle(
                                fontSize: isSmall ? 11 : 12,
                                color: AppColors.error,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 15),
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
            color: AppColors.lightBackground,
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

          // ---------------- BOTTOM NAVIGATION ----------------
          Container(
            color: AppColors.lightSurface,
            child: SafeArea(
              top: false,
              child: Center(
                heightFactor: 1,
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 540),
                  child: SizedBox(
                    height: 72,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // HOME
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.home_outlined,
                                size: 23,
                                color: AppColors.lightTextSecondary,
                              ),
                              const SizedBox(height: 5),
                              Text(
                                'Home',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: AppColors.lightTextSecondary,
                                ),
                              ),
                            ],
                          ),
                        ),

                        // EXPLORE
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.grid_view_outlined,
                                size: 23,
                                color: AppColors.lightTextSecondary,
                              ),
                              const SizedBox(height: 5),
                              Text(
                                'Explore',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: AppColors.lightTextSecondary,
                                ),
                              ),
                            ],
                          ),
                        ),

                        // BOOKINGS
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.calendar_month_outlined,
                                size: 23,
                                color: AppColors.lightTextSecondary,
                              ),
                              const SizedBox(height: 5),
                              Text(
                                'Bookings',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: AppColors.lightTextSecondary,
                                ),
                              ),
                            ],
                          ),
                        ),

                        // ACCOUNT - SELECTED
                        Expanded(
                          child: Center(
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 14,
                                vertical: 9,
                              ),
                              decoration: BoxDecoration(
                                color: AppColors.mint,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: const Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.person_outline_rounded,
                                    size: 23,
                                    color: AppColors.primaryDark,
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'Account',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700,
                                      color: AppColors.primaryDark,
                                    ),
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
              ),
            ),
          ),
        ],
      ),
    );
  }
}
