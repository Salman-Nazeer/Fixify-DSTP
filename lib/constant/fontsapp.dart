import 'package:flutter/material.dart';

class AppFonts {
  // FONT FAMILIES
  static const String headingFont = 'Poppins';
  static const String bodyFont = 'Inter';

  // FONT SIZES
  static const double displayLargeSize = 36;
  static const double displayMediumSize = 32;
  static const double displaySmallSize = 28;

  static const double headlineLargeSize = 24;
  static const double headlineMediumSize = 22;
  static const double headlineSmallSize = 20;

  static const double titleLargeSize = 18;
  static const double titleMediumSize = 16;
  static const double titleSmallSize = 14;

  static const double bodyLargeSize = 16;
  static const double bodyMediumSize = 14;
  static const double bodySmallSize = 12;

  static const double labelLargeSize = 14;
  static const double labelMediumSize = 12;
  static const double labelSmallSize = 10;

  // DISPLAY STYLES
  static const TextStyle displayLarge = TextStyle(
    fontFamily: headingFont,
    fontSize: displayLargeSize,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle displayMedium = TextStyle(
    fontFamily: headingFont,
    fontSize: displayMediumSize,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle displaySmall = TextStyle(
    fontFamily: headingFont,
    fontSize: displaySmallSize,
    fontWeight: FontWeight.w600,
  );

  // HEADLINE STYLES
  static const TextStyle headlineLarge = TextStyle(
    fontFamily: headingFont,
    fontSize: headlineLargeSize,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle headlineMedium = TextStyle(
    fontFamily: headingFont,
    fontSize: headlineMediumSize,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle headlineSmall = TextStyle(
    fontFamily: headingFont,
    fontSize: headlineSmallSize,
    fontWeight: FontWeight.w600,
  );

  // TITLE STYLES
  static const TextStyle titleLarge = TextStyle(
    fontFamily: headingFont,
    fontSize: titleLargeSize,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle titleMedium = TextStyle(
    fontFamily: headingFont,
    fontSize: titleMediumSize,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle titleSmall = TextStyle(
    fontFamily: headingFont,
    fontSize: titleSmallSize,
    fontWeight: FontWeight.w500,
  );

  // BODY STYLES
  static const TextStyle bodyLarge = TextStyle(
    fontFamily: bodyFont,
    fontSize: bodyLargeSize,
    fontWeight: FontWeight.w400,
    height: 1.5,
  );

  static const TextStyle bodyMedium = TextStyle(
    fontFamily: bodyFont,
    fontSize: bodyMediumSize,
    fontWeight: FontWeight.w400,
    height: 1.5,
  );

  static const TextStyle bodySmall = TextStyle(
    fontFamily: bodyFont,
    fontSize: bodySmallSize,
    fontWeight: FontWeight.w400,
    height: 1.4,
  );

  // LABEL STYLES
  static const TextStyle labelLarge = TextStyle(
    fontFamily: bodyFont,
    fontSize: labelLargeSize,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle labelMedium = TextStyle(
    fontFamily: bodyFont,
    fontSize: labelMediumSize,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle labelSmall = TextStyle(
    fontFamily: bodyFont,
    fontSize: labelSmallSize,
    fontWeight: FontWeight.w500,
  );

  // BUTTON STYLE
  static const TextStyle button = TextStyle(
    fontFamily: headingFont,
    fontSize: 14,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.2,
  );

  // INPUT STYLE
  static const TextStyle input = TextStyle(
    fontFamily: bodyFont,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  // HINT STYLE
  static const TextStyle hint = TextStyle(
    fontFamily: bodyFont,
    fontSize: 13,
    fontWeight: FontWeight.w400,
  );

  // CAPTION STYLE
  static const TextStyle caption = TextStyle(
    fontFamily: bodyFont,
    fontSize: 11,
    fontWeight: FontWeight.w400,
  );

  // OVERLINE STYLE
  static const TextStyle overline = TextStyle(
    fontFamily: bodyFont,
    fontSize: 10,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.8,
  );
}
