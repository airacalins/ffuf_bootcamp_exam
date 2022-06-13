import 'package:ffuf_bootcamp_exam/features/auth/auth_page.dart';
import 'package:flutter/material.dart';

class RouteManager {
  static const String authPage = '/';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case authPage:
        return MaterialPageRoute(builder: (context) => AuthPage());

      // TODO: Not Found Page Screen
      default:
        throw const FormatException('Route not found! Check routes again.');
    }
  }
}
