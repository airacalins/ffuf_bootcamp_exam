import 'package:ffuf_bootcamp_exam/features/account/account_page.dart';
import 'package:ffuf_bootcamp_exam/features/auth/auth_page.dart';
import 'package:ffuf_bootcamp_exam/screens/export_screens.dart';
import 'package:flutter/material.dart';

class RouteManager {
  static const String authPage = '/';
  static const String accountPage = '/account';
  static const String businessCardPage = '/account';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case authPage:
        return MaterialPageRoute(builder: (context) => AuthPage());
      case accountPage:
        return MaterialPageRoute(builder: (context) => AccountPage());

      // TODO: Not Found Page Screen
      default:
        throw const FormatException('Route not found! Check routes again.');
    }
  }
}
