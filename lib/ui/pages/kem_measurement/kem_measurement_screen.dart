import 'package:aplikasi_kem/ui/pages/kem_measurement/kem_measurement_first_section_screen.dart';
import 'package:aplikasi_kem/ui/pages/kem_measurement/kem_measurement_fourth_section_screen.dart';
import 'package:aplikasi_kem/ui/pages/kem_measurement/kem_measurement_second_section_screen.dart';
import 'package:aplikasi_kem/ui/pages/kem_measurement/kem_measurement_third_section_screen.dart';
import 'package:aplikasi_kem/ui/widgets/buttons/colored_card_button.dart';
import 'package:aplikasi_kem/ui/widgets/scaffolds/main_detail_scaffold.dart';
import 'package:aplikasi_kem/ui/widgets/utils/space.dart';
import 'package:aplikasi_kem/utils/ui/color_utils.dart' as colors;
import 'package:aplikasi_kem/utils/routes.dart' as routes;
import 'package:flutter/material.dart';

class KEMMeasurementScreen extends StatelessWidget {
  const KEMMeasurementScreen({super.key});

  static const String route = '/kem-measurement';

  @override
  Widget build(BuildContext context) {
    return MainDetailScaffold(
      appBarTitleText: 'Pengukuran K.E.M',
      appBarTitleTextColor: colors.darkTextColor,
      illustrationAssetName:
          'assets/images/kem_measurement/main_illustration.png',
      tagline:
          'Sesulit apapun pelajaran, jangan pernah meragukan potensimu sendiri',
      body: Column(
        children: [
          // Menu buttons
          ColoredCardButton(
            label: 'Alat Pengukuran K.E.M',
            textColor: colors.whiteColor,
            backgroundColor: colors.darkPurpleColor,
            onIconPressed: () {
              routes.navigateTo(
                  context, KEMMeasurementFirstSectionScreen.route);
            },
          ),
          const Space(size: 12.0),
          ColoredCardButton(
            label: 'Cara Mengukur K.E.M',
            textColor: colors.whiteColor,
            backgroundColor: colors.lightBlueColor,
            onIconPressed: () {
              routes.navigateTo(
                  context, KEMMeasurementSecondSectionScreen.route);
            },
          ),
          const Space(size: 12.0),
          ColoredCardButton(
            label: 'Standarisasi K.E.M',
            textColor: colors.whiteColor,
            backgroundColor: colors.orangeColor,
            onIconPressed: () {
              routes.navigateTo(
                  context, KEMMeasurementThirdSectionScreen.route);
            },
          ),
          const Space(size: 12.0),
          ColoredCardButton(
            label: 'Ringkasan',
            textColor: colors.whiteColor,
            backgroundColor: colors.greenColor,
            onIconPressed: () {
              routes.navigateTo(
                  context, KEMMeasurementFourthSectionScreen.route);
            },
          ),
        ],
      ),
    );
  }
}
