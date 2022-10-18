import 'package:aplikasi_kem/ui/pages/dashboard_screen.dart';
import 'package:aplikasi_kem/ui/pages/landing_screen.dart';
import 'package:aplikasi_kem/ui/pages/splash_screen.dart';
import 'package:flutter/widgets.dart';

Map<String, Widget Function(BuildContext context)> build() {
  return {
    SplashScreen.route: (ctx) => const SplashScreen(),
    LandingScreen.route: (ctx) => const LandingScreen(),
    DashboardScreen.route: (ctx) => const DashboardScreen(),
  };
}

void navigateTo(BuildContext context, String routeName) {
  Navigator.pushNamed(context, routeName);
}

void replaceWith(BuildContext context, String routeName) {
  Navigator.pushReplacementNamed(context, routeName);
}
