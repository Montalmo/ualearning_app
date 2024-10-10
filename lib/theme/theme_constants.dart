import 'package:flutter/material.dart';

import 'package:ualearning_app/theme/color_pallet.dart';

TextTheme appTextTheme = const TextTheme(
  displayLarge: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 56,
      color: AppColorPallet.textPrimaryColor),
  displayMedium: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 48,
      color: AppColorPallet.textPrimaryColor),
  displaySmall: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 40,
      color: AppColorPallet.textPrimaryColor),
  headlineLarge: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 32,
      color: AppColorPallet.textPrimaryColor),
  headlineMedium: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 28,
      color: AppColorPallet.textPrimaryColor),
  headlineSmall: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 24,
      color: AppColorPallet.textPrimaryColor),
  titleLarge: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 20,
      color: AppColorPallet.textPrimaryColor),
  titleMedium: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 18,
      color: AppColorPallet.textPrimaryColor),
  titleSmall: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 16,
      color: AppColorPallet.textPrimaryColor),
  bodyLarge: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 16,
      color: AppColorPallet.textPrimaryColor),
  bodyMedium: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 14,
      color: AppColorPallet.textPrimaryColor),
  bodySmall: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 12,
      color: AppColorPallet.textPrimaryColor),
);

ElevatedButtonThemeData appElevatedButtonThemeData = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    backgroundColor: AppColorPallet.mainColor,
    foregroundColor: AppColorPallet.whiteColor,
    side: const BorderSide(color: AppColorPallet.buttonBorderColor),
    padding: const EdgeInsets.symmetric(
      horizontal: 24.0,
      vertical: 12.0,
    ),
  ),
);
