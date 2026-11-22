import 'package:fixify/constant/colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static ThemeData get lightTheme => ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light(
      primary: AppColors.primary,
      onPrimary: AppColors.white,
      secondary: AppColors.primaryDark,
      onSecondary: AppColors.white,
      error: AppColors.error,
      onError: AppColors.white,
      surface: AppColors.lightSurface,
      onSurface: AppColors.lightTextPrimary,
      outline: AppColors.lightBorder,
      outlineVariant: AppColors.lightDivider,
    ),
    scaffoldBackgroundColor: AppColors.lightBackground,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.lightBackground,
      foregroundColor: AppColors.lightTextPrimary,
      surfaceTintColor: AppColors.transparent,
      elevation: 0,
    ),
  );

  static ThemeData get darkTheme => ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorScheme: const ColorScheme.dark(
      primary: AppColors.primaryLight,
      onPrimary: AppColors.darkBackground,
      secondary: AppColors.primary,
      onSecondary: AppColors.white,
      error: AppColors.error,
      onError: AppColors.white,
      surface: AppColors.darkSurface,
      onSurface: AppColors.darkTextPrimary,
      outline: AppColors.darkBorder,
      outlineVariant: AppColors.darkDivider,
    ),
    scaffoldBackgroundColor: AppColors.darkBackground,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.darkBackground,
      foregroundColor: AppColors.darkTextPrimary,
      surfaceTintColor: AppColors.transparent,
      elevation: 0,
    ),
  );

  static bool isDark(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark;

  static Color backgroundColor(BuildContext context) =>
      isDark(context) ? AppColors.darkBackground : AppColors.lightBackground;

  static Color surfaceColor(BuildContext context) =>
      Theme.of(context).colorScheme.surface;

  static Color cardColor(BuildContext context) =>
      isDark(context) ? AppColors.darkCard : AppColors.lightCard;

  static Color primaryTextColor(BuildContext context) =>
      Theme.of(context).colorScheme.onSurface;

  static Color secondaryTextColor(BuildContext context) =>
      isDark(context)
      ? AppColors.darkTextSecondary
      : AppColors.lightTextSecondary;

  static Color hintColor(BuildContext context) =>
      isDark(context) ? AppColors.darkTextHint : AppColors.lightTextHint;

  static Color borderColor(BuildContext context) =>
      Theme.of(context).colorScheme.outline;
}
