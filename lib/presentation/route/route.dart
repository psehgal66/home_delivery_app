
import 'package:flutter/material.dart';
import 'package:home_delivery_app/presentation/screens/bottom_navbar.dart';

class RouteGenerator {
  static const String splashScreen = '/';
  static const String tabScreen = '/tab';
  static const String homeScreen = '/home';
  static const String thankyou = '/thank_you';
  static const String error = '/error';
  static const String locationPermission = '/location_permission';
  static const String notificationPermission = '/notification_permission';

  RouteGenerator._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return MaterialPageRoute(builder: (_) => Container());
      case tabScreen:
        return MaterialPageRoute(builder: (_) => BottomNavScreen());
      case homeScreen:
        return MaterialPageRoute(builder: (_) => Container());
      default:
        return MaterialPageRoute(builder: (_) => Container());
    }
  }
}