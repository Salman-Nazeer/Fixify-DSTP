import 'package:flutter/material.dart';
import 'package:fixify/constant/colors.dart';
import 'package:fixify/constant/fontsapp.dart';

class AppTheme {
  // LIGHT THEME
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    fontFamily: AppFonts.bodyFont,
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.lightBackground,
    textTheme: const TextTheme(
      displayLarge: AppFonts.displayLarge,
      displayMedium: AppFonts.displayMedium,
      displaySmall: AppFonts.displaySmall,
      headlineLarge: AppFonts.headlineLarge,
      headlineMedium: AppFonts.headlineMedium,
      headlineSmall: AppFonts.headlineSmall,
      titleLarge: AppFonts.titleLarge,
      titleMedium: AppFonts.titleMedium,
      titleSmall: AppFonts.titleSmall,
      bodyLarge: AppFonts.bodyLarge,
      bodyMedium: AppFonts.bodyMedium,
      bodySmall: AppFonts.bodySmall,
      labelLarge: AppFonts.labelLarge,
      labelMedium: AppFonts.labelMedium,
      labelSmall: AppFonts.labelSmall,
    ),

    colorScheme: const ColorScheme.light(
      primary: AppColors.primaryDark,
      surface: AppColors.lightSurface,
      onSurface: AppColors.lightTextPrimary,
      error: AppColors.error,
    ),

    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.lightBackground,
      foregroundColor: AppColors.lightTextPrimary,
      surfaceTintColor: AppColors.transparent,
      elevation: 0,
      titleTextStyle: const TextStyle(
        fontFamily: AppFonts.headingFont,
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: AppColors.lightTextPrimary,
      ),
    ),
  );

  // DARK THEME
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    fontFamily: AppFonts.bodyFont,
    primaryColor: AppColors.primaryLight,
    scaffoldBackgroundColor: AppColors.darkBackground,
    textTheme: const TextTheme(
      displayLarge: AppFonts.displayLarge,
      displayMedium: AppFonts.displayMedium,
      displaySmall: AppFonts.displaySmall,
      headlineLarge: AppFonts.headlineLarge,
      headlineMedium: AppFonts.headlineMedium,
      headlineSmall: AppFonts.headlineSmall,
      titleLarge: AppFonts.titleLarge,
      titleMedium: AppFonts.titleMedium,
      titleSmall: AppFonts.titleSmall,
      bodyLarge: AppFonts.bodyLarge,
      bodyMedium: AppFonts.bodyMedium,
      bodySmall: AppFonts.bodySmall,
      labelLarge: AppFonts.labelLarge,
      labelMedium: AppFonts.labelMedium,
      labelSmall: AppFonts.labelSmall,
    ),

    colorScheme: const ColorScheme.dark(
      primary: AppColors.primaryLight,
      surface: AppColors.darkSurface,
      onSurface: AppColors.darkTextPrimary,
      error: AppColors.error,
    ),

    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.darkBackground,
      foregroundColor: AppColors.darkTextPrimary,
      surfaceTintColor: AppColors.transparent,
      elevation: 0,
      titleTextStyle: const TextStyle(
        fontFamily: AppFonts.headingFont,
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: AppColors.darkTextPrimary,
      ),
    ),
  );

  // CHECK THEME
  static bool isDark(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  // BACKGROUND COLOR
  static Color backgroundColor(BuildContext context) {
    return isDark(context)
        ? AppColors.darkBackground
        : AppColors.lightBackground;
  }

  // CARD COLOR
  static Color cardColor(BuildContext context) {
    return isDark(context) ? AppColors.darkCard : AppColors.lightCard;
  }

  // SURFACE COLOR
  static Color surfaceColor(BuildContext context) {
    return isDark(context) ? AppColors.darkSurface : AppColors.lightSurface;
  }

  // PRIMARY TEXT
  static Color primaryTextColor(BuildContext context) {
    return isDark(context)
        ? AppColors.darkTextPrimary
        : AppColors.lightTextPrimary;
  }

  // SECONDARY TEXT
  static Color secondaryTextColor(BuildContext context) {
    return isDark(context)
        ? AppColors.darkTextSecondary
        : AppColors.lightTextSecondary;
  }

  // HINT COLOR
  static Color hintColor(BuildContext context) {
    return isDark(context) ? AppColors.darkTextHint : AppColors.lightTextHint;
  }

  // BORDER COLOR
  static Color borderColor(BuildContext context) {
    return isDark(context) ? AppColors.darkBorder : AppColors.lightBorder;
  }
}
