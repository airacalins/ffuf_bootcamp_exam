import 'package:ffuf_bootcamp_exam/constants/export_constants.dart';
import 'package:flutter/material.dart';

class AppText {
  static TextTheme styles = const TextTheme(
    headline2: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
    headline4: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
    headline5: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
    subtitle1: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w300,
      color: textColor,
    ),
    subtitle2: TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w300,
      color: textColor,
    ),
  );
}
