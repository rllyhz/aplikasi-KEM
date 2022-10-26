import 'package:aplikasi_kem/ui/pages/reading/reading_fifth_section_screen.dart';
import 'package:aplikasi_kem/ui/pages/reading/reading_first_section_screen.dart';
import 'package:aplikasi_kem/ui/pages/reading/reading_fourth_section_screen.dart';
import 'package:aplikasi_kem/ui/pages/reading/reading_second_section_screen.dart';
import 'package:aplikasi_kem/ui/pages/reading/reading_third_section_screen.dart';
import 'package:aplikasi_kem/ui/widgets/buttons/colored_card_button.dart';
import 'package:aplikasi_kem/ui/widgets/scaffolds/main_detail_scaffold.dart';
import 'package:aplikasi_kem/ui/widgets/utils/space.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_kem/utils/ui/color_utils.dart' as colors;
import 'package:aplikasi_kem/utils/routes.dart' as routes;

class ReadingScreen extends StatelessWidget {
  const ReadingScreen({super.key});

  static String route = '/reading';

  @override
  Widget build(BuildContext context) {
    return MainDetailScaffold(
      appBarTitleText: 'Materi Membaca',
      appBarTitleTextColor: colors.darkTextColor,
      tagline: 'Bersemangatlah dalam mempelajari sesuatu yang bermanfaat',
      illustrationAssetName: 'assets/images/reading/main_illustration.png',
      body: Column(
        children: [
          // Menu buttons
          ColoredCardButton(
            label: 'Pengertian Membaca',
            textColor: colors.whiteColor,
            backgroundColor: colors.redColor,
            onIconPressed: () {
              routes.navigateTo(context, ReadingFirstSectionScreen.route);
            },
          ),
          const Space(size: 12.0),
          ColoredCardButton(
            label: 'Tujuan Membaca',
            textColor: colors.whiteColor,
            backgroundColor: colors.orangeColor,
            onIconPressed: () {
              routes.navigateTo(context, ReadingSecondSectionScreen.route);
            },
          ),
          const Space(size: 12.0),
          ColoredCardButton(
            label: 'Manfaat Membaca',
            textColor: colors.whiteColor,
            backgroundColor: colors.limeColor,
            onIconPressed: () {
              routes.navigateTo(context, ReadingThirdSectionScreen.route);
            },
          ),
          const Space(size: 12.0),
          ColoredCardButton(
            label: 'Aspek Membaca',
            textColor: colors.whiteColor,
            backgroundColor: colors.darkPurpleColor,
            onIconPressed: () {
              routes.navigateTo(context, ReadingFourthSectionScreen.route);
            },
          ),
          const Space(size: 12.0),
          ColoredCardButton(
            label: 'Ringkasan',
            textColor: colors.whiteColor,
            backgroundColor: colors.lightBlueColor,
            onIconPressed: () {
              routes.navigateTo(context, ReadingFifthSectionScreen.route);
            },
          ),
        ],
      ),
    );
  }
}
