import 'package:fixify/app/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:fixify/constant/colors.dart';
import 'package:fixify/constant/fontsapp.dart';

AppBar customAppBar(
  BuildContext context, {
  required String title,
  bool showBackButton = true,
}) {
  return AppBar(
    backgroundColor: AppTheme.backgroundColor(context),
    elevation: 0,
    surfaceTintColor: AppColors.transparent,
    centerTitle: false,
    automaticallyImplyLeading: false,

    leading: showBackButton
        ? IconButton(
            onPressed: () {
              Navigator.maybePop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_outlined,
              color: AppTheme.isDark(context)
                  ? AppColors.primaryLight
                  : AppColors.primaryDark,
              size: 22,
            ),
          )
        : null,

    title: Text(
      title,
      style: AppFonts.titleLarge.copyWith(
        color: AppTheme.primaryTextColor(context),
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}