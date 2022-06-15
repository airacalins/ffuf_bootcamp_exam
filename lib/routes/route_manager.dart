import 'package:ffuf_bootcamp_exam/exports/export_screens.dart';
import 'package:ffuf_bootcamp_exam/features/create_time_tracking/create_time_tracking_page.dart';
import 'package:flutter/material.dart';

import 'package:ffuf_bootcamp_exam/exports/export_pages.dart';

class RouteManager {
  static const String authPage = '/';
  static const String accountPage = '/account';
  static const String businessCardPage = '/businessCard';
  static const String timeTrackingPage = '/timeTracking';
  static const String createTimeTrackingPage = '/createTimeTrackingPage';
  static const String holidayPage = '/holiday';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case authPage:
        return MaterialPageRoute(builder: (context) => const AuthPage());
      case accountPage:
        return MaterialPageRoute(builder: (context) => const AccountPage());
      case businessCardPage:
        return MaterialPageRoute(builder: (context) => const BusinessCardPage());
      case timeTrackingPage:
        return MaterialPageRoute(builder: (context) => const TimeTrackingPage());
      case createTimeTrackingPage:
        return MaterialPageRoute(builder: (context) => const CreateTimeTrackingPage());
      case holidayPage:
        return MaterialPageRoute(builder: (context) => const HolidayScreen());

      // TODO: Not Found Page Screen
      default:
        throw const FormatException('Route not found! Check routes again.');
    }
  }
}
