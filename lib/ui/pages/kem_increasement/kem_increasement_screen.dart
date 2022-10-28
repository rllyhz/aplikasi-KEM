import 'package:aplikasi_kem/ui/pages/kem_increasement/first/kem_increasement_first_section_screen.dart';
import 'package:aplikasi_kem/ui/pages/kem_increasement/fourth/kem_increasement_fourth_section_screen.dart';
import 'package:aplikasi_kem/ui/pages/kem_increasement/second/kem_increasement_second_section_screen.dart';
import 'package:aplikasi_kem/ui/pages/kem_increasement/third/kem_increasement_third_section_screen.dart';
import 'package:aplikasi_kem/ui/widgets/buttons/colored_card_button.dart';
import 'package:aplikasi_kem/ui/widgets/scaffolds/main_detail_scaffold.dart';
import 'package:aplikasi_kem/ui/widgets/utils/space.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_kem/utils/ui/color_utils.dart' as colors;
import 'package:aplikasi_kem/utils/routes.dart' as routes;

class KEMIncreasementScreen extends StatelessWidget {
  const KEMIncreasementScreen({super.key});

  static const String route = '/kem-increasement';

  @override
  Widget build(BuildContext context) {
    return MainDetailScaffold(
      appBarTitleTextColor: colors.darkTextColor,
      appBarTitleText: 'Peningkatan K.E.M',
      illustrationAssetName:
          'assets/images/kem_increasement/main_illustration.png',
      illustrationWidthInPercentage: 0.6,
      tagline:
          'Sebesar usaha dikeluarkan sebesar itu pula kesuksesan yang didapat',
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ColoredCardButton(
            backgroundColor: colors.limeColor,
            label: 'Upaya Peningkatan KEM',
            labelWidthInPercentage: 0.7,
            textColor: colors.whiteColor,
            onIconPressed: () {
              routes.navigateTo(
                  context, KEMIncreasementFirstSectionScreen.route);
            },
          ),
          const Space(size: 12.0),
          ColoredCardButton(
            backgroundColor: colors.lightBlueColor,
            label: 'Metode Membaca Cepat',
            labelWidthInPercentage: 0.7,
            textColor: colors.whiteColor,
            onIconPressed: () {
              routes.navigateTo(
                  context, KEMIncreasementSecondSectionScreen.route);
            },
          ),
          const Space(size: 12.0),
          ColoredCardButton(
            backgroundColor: colors.orangeColor,
            label: 'Teknik Membaca Cepat',
            labelWidthInPercentage: 0.7,
            textColor: colors.whiteColor,
            onIconPressed: () {
              routes.navigateTo(
                  context, KEMIncreasementThirdSectionScreen.route);
            },
          ),
          const Space(size: 12.0),
          ColoredCardButton(
            backgroundColor: colors.greenColor,
            label: 'Ringkasan',
            textColor: colors.whiteColor,
            onIconPressed: () {
              routes.navigateTo(
                  context, KEMIncreasementFourthSectionScreen.route);
            },
          ),
        ],
      ),
    );
  }
}
