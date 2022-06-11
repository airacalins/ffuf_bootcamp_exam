import 'package:flutter/material.dart';

class ButtonStyles {
  static final elevatedButton = ElevatedButtonThemeData(
      style: TextButton.styleFrom(
    shape: const RoundedRectangleBorder(
      //to set border radius to button
      borderRadius: BorderRadius.zero,
    ),
    backgroundColor: Colors.black,
    primary: Colors.white,
    padding: const EdgeInsets.all(10.0),
    textStyle: const TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 15,
      fontFamily: 'Poppins',
    ),
  ));
}
