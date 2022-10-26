import 'package:aplikasi_kem/ui/pages/kem/kem_first_section_screen.dart';
import 'package:aplikasi_kem/ui/pages/kem/kem_second_section_screen.dart';
import 'package:aplikasi_kem/ui/pages/kem/kem_third_section_screen.dart';
import 'package:aplikasi_kem/ui/widgets/buttons/colored_card_button.dart';
import 'package:aplikasi_kem/ui/widgets/scaffolds/main_detail_scaffold.dart';
import 'package:aplikasi_kem/ui/widgets/utils/space.dart';
import 'package:aplikasi_kem/utils/ui/color_utils.dart' as colors;
import 'package:aplikasi_kem/utils/routes.dart' as routes;
import 'package:flutter/material.dart';

class KEMScreen extends StatelessWidget {
  const KEMScreen({super.key});

  static const String route = '/kem';

  @override
  Widget build(BuildContext context) {
    return MainDetailScaffold(
      appBarTitleText: 'Materi K.E.M',
      appBarTitleTextColor: colors.darkTextColor,
      tagline: 'Tidak ada kata tua untuk belajar',
      illustrationAssetName: 'assets/images/kem/main_illustration.png',
      body: Column(
        children: [
          // menu buttons
          ColoredCardButton(
            label: 'Pengertian K.E.M',
            textColor: colors.whiteColor,
            backgroundColor: colors.greenColor,
            onIconPressed: () {
              routes.navigateTo(context, KEMFirstSectionScreen.route);
            },
          ),
          const Space(size: 12.0),
          ColoredCardButton(
            label: 'Faktor-faktor yang mempengaruhi K.E.M',
            textColor: colors.whiteColor,
            backgroundColor: colors.lightBlueColor,
            onIconPressed: () {
              routes.navigateTo(context, KEMSecondSectionScreen.route);
            },
          ),
          const Space(size: 12.0),
          ColoredCardButton(
            label: 'Ringkasan',
            textColor: colors.whiteColor,
            backgroundColor: colors.orangeColor,
            onIconPressed: () {
              routes.navigateTo(context, KEMThirdSectionScreen.route);
            },
          ),
        ],
      ),
    );
  }
}
