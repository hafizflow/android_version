import 'package:flutter/material.dart';

class AFloatingActionButtonTheme {
  AFloatingActionButtonTheme._();

  static FloatingActionButtonThemeData fAButtonTheme =
      FloatingActionButtonThemeData(
    backgroundColor: Colors.teal[400],
    foregroundColor: Colors.white,
    elevation: 6,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  );
}
