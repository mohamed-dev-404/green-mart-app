import 'package:flutter/material.dart';
import 'package:green_mart_app/core/utils/colors/app_colors.dart';
import 'package:green_mart_app/core/utils/styles/app_fonts.dart';
import 'package:green_mart_app/core/utils/styles/text_styles.dart';

class AppThemes {
  AppThemes._();

  static ThemeData get light => ThemeData(
    fontFamily: AppFonts.poppins,
    scaffoldBackgroundColor: AppColors.backgroundColor,
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        padding: const EdgeInsets.all(0),
        minimumSize: Size.zero,
        foregroundColor: AppColors.primaryColor,
      ),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.backgroundColor,
      surfaceTintColor: Colors.transparent,
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primaryColor,
      onSurface: AppColors.blackColor,
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: AppColors.accentColor,
      filled: true,
      hintStyle: AppStyles.caption1.copyWith(color: AppColors.greyColor),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide.none,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: AppColors.backgroundColor,
      selectedItemColor: AppColors.primaryColor,
      unselectedItemColor: AppColors.greyColor,
      selectedLabelStyle: AppStyles.caption2.copyWith(
        fontWeight: FontWeight.w500,
        height: 1.8,
      ),
      unselectedLabelStyle: AppStyles.caption2.copyWith(
        height: 1.8,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}
