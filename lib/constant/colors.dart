import 'package:flutter/material.dart';

class AppColors {
  // BRAND COLORS
  static const Color primary = Color(0xFF0F9D92);
  static const Color primaryDark = Color(0xFF087F78);
  static const Color primaryLight = Color(0xFF43BFB2);
  static const Color secondary = Color(0xFF142235);
  static const Color accent = Color(0xFFFF8B6A);
  static const Color mint = Color(0xFFDDF5F1);
  static const Color cloud = Color(0xFFF6F8FB);

  // LIGHT THEME
  static const Color lightBackground = cloud;
  static const Color lightSurface = white;
  static const Color lightCard = white;
  static const Color lightTextPrimary = secondary;
  static const Color lightTextSecondary = Color(0xFF667085);
  static const Color lightTextHint = Color(0xFF98A2B3);
  static const Color lightBorder = Color(0xFFE5EAF0);
  static const Color lightDivider = Color(0xFFEAECF0);

  // DARK THEME
  static const Color darkBackground = Color(0xFF0B1220);
  static const Color darkSurface = secondary;
  static const Color darkCard = Color(0xFF1B2A3D);
  static const Color darkTextPrimary = Color(0xFFF8FAFC);
  static const Color darkTextSecondary = Color(0xFFB0BAC8);
  static const Color darkTextHint = Color(0xFF7D8A9B);
  static const Color darkBorder = Color(0xFF2B3B50);
  static const Color darkDivider = Color(0xFF263548);

  // STATUS COLORS
  static const Color success = Color(0xFF16A36A);
  static const Color warning = Color(0xFFF4A62A);
  static const Color error = Color(0xFFE5484D);
  static const Color info = Color(0xFF3485D5);

  static const Color successLight = Color(0xFFE1F7EC);
  static const Color warningLight = Color(0xFFFFF3D9);
  static const Color errorLight = Color(0xFFFFE8E8);
  static const Color infoLight = Color(0xFFE6F2FF);

  // BOOKING STATUS
  static const Color pending = warning;
  static const Color accepted = info;
  static const Color inProgress = primary;
  static const Color completed = success;
  static const Color cancelled = error;

  // COMMON COLORS
  static const Color white = Colors.white;
  static const Color black = Colors.black;
  static const Color transparent = Colors.transparent;

  // GRADIENTS
  static const List<Color> primaryGradient = [primary, primaryDark];

  static const List<Color> darkGradient = [secondary, darkBackground];
}
