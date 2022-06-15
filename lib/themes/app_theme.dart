import 'package:ffuf_bootcamp_exam/themes/export_themes.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData customStyles = ThemeData(
    fontFamily: 'Roboto',
    textTheme: AppText.styles,
    elevatedButtonTheme: AppButton.elevated,
    textButtonTheme: AppButton.text,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      elevation: 0,
    ),
  );
}
