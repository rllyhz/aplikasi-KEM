import 'dart:async';

import 'package:aplikasi_kem/ui/pages/landing_screen.dart';
import 'package:aplikasi_kem/ui/widgets/utils/space.dart';
import 'package:aplikasi_kem/utils/ui/color_utils.dart' as colors;
import 'package:aplikasi_kem/utils/ui/font_utils.dart' as text_styles;
import 'package:aplikasi_kem/utils/values/strings.dart' as string_resource;
import 'package:aplikasi_kem/utils/values/constants.dart' as constants;
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
      const Duration(
        milliseconds: constants.splashTimeDelayInMilliseconds,
      ),
      () => routes.replaceWith(context, LandingScreen.route),
    );
  }

  @override
  Widget build(BuildContext context) {
    var maxWidth = MediaQuery.of(context).size.width;
    var logosContainerWidth = maxWidth * 0.25;

    return Scaffold(
      backgroundColor: colors.blueColor,
      body: Stack(
        children: [
          // background
          Center(
            child: SizedBox(
              width: maxWidth,
              child: Image.asset(
                'assets/images/splash/illustration.png',
                fit: BoxFit.fill,
              ),
            ),
          ),

          Positioned(
            top: logosContainerWidth / 2,
            left: logosContainerWidth,
            right: logosContainerWidth,
            child: Image.asset('assets/images/splash/splash_logos.png'),
          ),

          // logo
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/icons/icon_logo.svg'),
                Text(
                  string_resource.appTaglineAbbreviation,
                  style: text_styles.getSplashScreenTextStyle(
                    color: colors.whiteColor,
                  ),
                ),
                const Space(
                  size: 8.0,
                ),
                Text(
                  string_resource.appTagline,
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                        color: colors.whiteColor,
                      ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
