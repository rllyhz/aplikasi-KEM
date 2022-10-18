import 'dart:async';

import 'package:aplikasi_kem/ui/pages/landing_screen.dart';
import 'package:aplikasi_kem/ui/widgets/space.dart';
import 'package:aplikasi_kem/utils/ui/color_utils.dart';
import 'package:aplikasi_kem/utils/ui/font_utils.dart';
import 'package:aplikasi_kem/utils/values/strings.dart' as string_resource;
import 'package:aplikasi_kem/utils/routes.dart' as routes;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  static String route = '/';

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(
      const Duration(milliseconds: 3000),
      () => routes.replaceWith(context, LandingScreen.route),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/icons/icon_logo.svg'),
            Text(
              string_resource.appTaglineAbbreviation,
              style: getSplashScreenTextStyle(
                color: whiteColor,
              ),
            ),
            const Space(
              size: 8.0,
            ),
            Text(
              string_resource.appTagline,
              style: Theme.of(context)
                  .textTheme
                  .bodyText2
                  ?.copyWith(color: whiteColor),
            ),
          ],
        ),
      ),
    );
  }
}
