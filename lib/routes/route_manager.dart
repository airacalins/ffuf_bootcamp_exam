import 'package:flutter/material.dart';

import 'package:ffuf_bootcamp_exam/exports/export_pages.dart';

class RouteManager {
  static const String authPage = '/';
  static const String accountPage = '/account';
  static const String businessCardPage = '/businessCard';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case authPage:
        return MaterialPageRoute(builder: (context) => const AuthPage());
      case accountPage:
        return MaterialPageRoute(builder: (context) => const AccountPage());
      case businessCardPage:
        return MaterialPageRoute(builder: (context) => const BusinessCardPage());

      // TODO: Not Found Page Screen
      default:
        throw const FormatException('Route not found! Check routes again.');
    }
  }
}
