import 'package:aplikasi_kem/ui/pages/dashboard_screen.dart';
import 'package:aplikasi_kem/ui/pages/kem/kem_first_section_screen.dart';
import 'package:aplikasi_kem/ui/pages/kem/kem_screen.dart';
import 'package:aplikasi_kem/ui/pages/kem/kem_second_section_screen.dart';
import 'package:aplikasi_kem/ui/pages/kem/kem_third_section_screen.dart';
import 'package:aplikasi_kem/ui/pages/landing_screen.dart';
import 'package:aplikasi_kem/ui/pages/reading/reading_fifth_section_screen.dart';
import 'package:aplikasi_kem/ui/pages/reading/reading_first_section_screen.dart';
import 'package:aplikasi_kem/ui/pages/reading/reading_fourth_section_screen.dart';
import 'package:aplikasi_kem/ui/pages/reading/reading_screen.dart';
import 'package:aplikasi_kem/ui/pages/reading/reading_second_section_screen.dart';
import 'package:aplikasi_kem/ui/pages/reading/reading_third_section_screen.dart';
import 'package:aplikasi_kem/ui/pages/splash_screen.dart';
import 'package:flutter/widgets.dart';

final RouteObserver<PageRoute> routeObserver = RouteObserver();

Map<String, Widget Function(BuildContext context)> build() {
  return {
    SplashScreen.route: (ctx) => const SplashScreen(),
    LandingScreen.route: (ctx) => const LandingScreen(),
    DashboardScreen.route: (ctx) => const DashboardScreen(),
    ReadingScreen.route: (ctx) => const ReadingScreen(),
    ReadingFirstSectionScreen.route: (ctx) => const ReadingFirstSectionScreen(),
    ReadingSecondSectionScreen.route: (ctx) =>
        const ReadingSecondSectionScreen(),
    ReadingThirdSectionScreen.route: (ctx) => const ReadingThirdSectionScreen(),
    ReadingFourthSectionScreen.route: (ctx) =>
        const ReadingFourthSectionScreen(),
    ReadingFifthSectionScreen.route: (ctx) => const ReadingFifthSectionScreen(),
    KEMScreen.route: (ctx) => const KEMScreen(),
    KEMFirstSectionScreen.route: (ctx) => const KEMFirstSectionScreen(),
    KEMSecondSectionScreen.route: (ctx) => const KEMSecondSectionScreen(),
    KEMThirdSectionScreen.route: (ctx) => const KEMThirdSectionScreen(),
  };
}

void navigateTo(BuildContext context, String routeName) {
  Navigator.pushNamed(context, routeName);
}

void replaceWith(BuildContext context, String routeName) {
  Navigator.pushReplacementNamed(context, routeName);
}

void navigateUp(BuildContext context) {
  if (Navigator.canPop(context)) {
    Navigator.pop(context);
  }
}
