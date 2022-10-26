import 'package:aplikasi_kem/ui/pages/exercises/exercise_fifth_section_screen.dart';
import 'package:aplikasi_kem/ui/pages/exercises/exercise_fourth_section_screen.dart';
import 'package:aplikasi_kem/ui/pages/exercises/exercise_second_section_screen.dart';
import 'package:aplikasi_kem/ui/pages/exercises/exercise_sixth_section_screen.dart';
import 'package:aplikasi_kem/ui/pages/exercises/exercise_third_section_screen.dart';
import 'package:aplikasi_kem/ui/widgets/buttons/colored_card_button.dart';
import 'package:aplikasi_kem/ui/widgets/scaffolds/main_detail_scaffold.dart';
import 'package:aplikasi_kem/ui/widgets/utils/space.dart';
import 'package:aplikasi_kem/utils/ui/color_utils.dart' as colors;
import 'package:aplikasi_kem/utils/routes.dart' as routes;
import 'package:flutter/material.dart';

class ExerciseFirstSectionScreen extends StatelessWidget {
  const ExerciseFirstSectionScreen({super.key});

  static const String route = '/exercise-first-section';

  @override
  Widget build(BuildContext context) {
    return MainDetailScaffold(
      appBarTitleTextColor: colors.darkTextColor,
      illustrationAssetName: 'assets/images/exercises/main_illustration.png',
      illustrationWidthInPercentage: 0.42,
      tagline: 'Lakukan yang terbaik di semua kesempatan yang kamu miliki',
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Space(size: 12.0),
          ColoredCardButton(
            backgroundColor: colors.orangeColor,
            label: 'Teks Laporan Hasil Observasi',
            labelWidthInPercentage: 0.60,
            textColor: colors.whiteColor,
            onIconPressed: () {
              routes.navigateTo(context, ExerciseSecondSectionScreen.route);
            },
          ),
          const Space(size: 12.0),
          ColoredCardButton(
            backgroundColor: colors.limeColor,
            label: 'Teks Eksposisi',
            textColor: colors.whiteColor,
            onIconPressed: () {
              routes.navigateTo(context, ExerciseThirdSectionScreen.route);
            },
          ),
          const Space(size: 12.0),
          ColoredCardButton(
            backgroundColor: colors.greenColor,
            label: 'Teks Anekdot',
            textColor: colors.whiteColor,
            onIconPressed: () {
              routes.navigateTo(context, ExerciseFourthSectionScreen.route);
            },
          ),
          const Space(size: 12.0),
          ColoredCardButton(
            backgroundColor: colors.redColor,
            label: 'Teks Negosiasi',
            textColor: colors.whiteColor,
            onIconPressed: () {
              routes.navigateTo(context, ExerciseFifthSectionScreen.route);
            },
          ),
          const Space(size: 12.0),
          ColoredCardButton(
            backgroundColor: colors.lightBlueColor,
            label: 'Teks Biografi',
            textColor: colors.whiteColor,
            onIconPressed: () {
              routes.navigateTo(context, ExerciseSixthSectionScreen.route);
            },
          ),
        ],
      ),
    );
  }
}
