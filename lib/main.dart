import 'package:aplikasi_kem/ui/pages/splash_screen.dart';
import 'package:aplikasi_kem/utils/routes.dart' as routes;
import 'package:aplikasi_kem/utils/ui/theme_utils.dart';
import 'package:aplikasi_kem/utils/values/strings.dart' as string_resource;
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: string_resource.appName,
      debugShowCheckedModeBanner: false,
      theme: getCustomThemeData(),
      routes: routes.build(),
      initialRoute: SplashScreen.route,
    );
  }
}
