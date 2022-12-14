import 'package:aplikasi_kem/ui/pages/splash_screen.dart';
import 'package:aplikasi_kem/utils/routes.dart' as routes;
import 'package:aplikasi_kem/utils/ui/theme_utils.dart';
import 'package:aplikasi_kem/utils/ui/color_utils.dart' as colors;
import 'package:aplikasi_kem/utils/values/strings.dart' as string_resource;
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    setStatusBarColor(color: colors.transparentColor);

    return MaterialApp(
      title: string_resource.appName,
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: getCustomThemeData(),
      routes: routes.build(),
      initialRoute: SplashScreen.route,
      navigatorObservers: [routes.routeObserver],
    );
  }
}
