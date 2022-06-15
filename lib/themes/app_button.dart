import 'package:flutter/material.dart';

class AppButton {
  static final elevated = ElevatedButtonThemeData(
    style: TextButton.styleFrom(
      shape: const RoundedRectangleBorder(
        //to set border radius to button
        borderRadius: BorderRadius.zero,
      ),
      backgroundColor: Colors.black,
      primary: Colors.white,
      padding: const EdgeInsets.all(10.0),
      textStyle: const TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 13,
        fontFamily: 'Poppins',
      ),
    ),
  );

  static final text = TextButtonThemeData(
    style: TextButton.styleFrom(
      primary: Colors.black,
      padding: const EdgeInsets.all(10.0),
      textStyle: const TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 13,
        fontFamily: 'Poppins',
      ),
    ),
  );
}
