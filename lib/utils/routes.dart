import 'package:aplikasi_kem/ui/pages/landing_screen.dart';
import 'package:aplikasi_kem/ui/pages/splash_screen.dart';
import 'package:flutter/widgets.dart';

Map<String, Widget Function(BuildContext context)> build() {
  return {
    SplashScreen.route: (ctx) => const SplashScreen(),
    LandingScreen.route: (ctx) => const LandingScreen(),
  };
}
