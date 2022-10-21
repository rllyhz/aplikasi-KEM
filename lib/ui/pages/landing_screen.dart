import 'package:aplikasi_kem/ui/pages/dashboard_screen.dart';
import 'package:aplikasi_kem/ui/widgets/custom_button.dart';
import 'package:aplikasi_kem/ui/widgets/space.dart';
import 'package:aplikasi_kem/utils/ui/color_utils.dart' as colors;
import 'package:aplikasi_kem/utils/values/sizes.dart' as sizes;
import 'package:aplikasi_kem/utils/routes.dart' as routes;
import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  static String route = '/landing';

  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.whiteColor,
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Stack(
          children: <Widget>[
            _buildIllustrationImage(
              context,
              'assets/images/landing/shaped_background.png',
            ),
            Column(
              children: [
                _buildIllustrationImage(
                  context,
                  'assets/images/landing/all_illustration.png',
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Ayo Belajar Sekarang!',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headline2?.copyWith(
                              fontSize: sizes.textSizeLarge,
                              color: colors.whiteColor,
                            ),
                      ),
                      const Space(
                        size: 10.0,
                      ),
                      Text(
                        'Petualangan dalam hidup adalah seberapa banyak kita belajar.',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyText2?.copyWith(
                              color: colors.whiteColor,
                              fontSize: 15.0,
                            ),
                      ),
                      const Space(
                        size: 120.0,
                      ),
                      CustomButton(
                        text: 'Yuk Mulai!',
                        textColor: colors.whiteColor,
                        backgroundColor: colors.blueColor,
                        onPressed: () {
                          routes.replaceWith(context, DashboardScreen.route);
                        },
                      ),
                      const Space(
                        size: 120.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIllustrationImage(
    BuildContext context,
    String assetName,
  ) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Image.asset(
        assetName,
        fit: BoxFit.fill,
      ),
    );
  }
}
