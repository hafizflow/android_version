import 'package:android_version/utiles/constant/colors.dart';
import 'package:flutter/material.dart';

class AFloatingActionButtonTheme {
  AFloatingActionButtonTheme._();

  static FloatingActionButtonThemeData fAButtonTheme =
      FloatingActionButtonThemeData(
    elevation: 6,
    backgroundColor: AppColors.primaryColor,
    foregroundColor: Colors.white,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  );
}
