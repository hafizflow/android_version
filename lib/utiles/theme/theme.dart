import 'package:android_version/utiles/constant/colors.dart';
import 'package:android_version/utiles/theme/custom_theme/floating_action_button_theme.dart';
import 'package:flutter/material.dart';

class AndroidVersionAppTheme {
  AndroidVersionAppTheme._();

  static ThemeData myTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    appBarTheme: AppBarTheme(color: AppColors.primaryColor),
    floatingActionButtonTheme: AFloatingActionButtonTheme.fAButtonTheme,
    scaffoldBackgroundColor: AppColors.primaryBackground,
  );
}
