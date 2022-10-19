import 'package:aplikasi_kem/ui/widgets/colored_card_button.dart';
import 'package:aplikasi_kem/ui/widgets/main_detail_scaffold.dart';
import 'package:aplikasi_kem/ui/widgets/space.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_kem/utils/ui/color_utils.dart' as colors;

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
            onIconPressed: () {},
          ),
          const Space(size: 8.0),
          ColoredCardButton(
            label: 'Tujuan Membaca',
            textColor: colors.whiteColor,
            backgroundColor: colors.orangeColor,
            onIconPressed: () {},
          ),
          const Space(size: 8.0),
          ColoredCardButton(
            label: 'Manfaat Membaca',
            textColor: colors.whiteColor,
            backgroundColor: colors.limeColor,
            onIconPressed: () {},
          ),
          const Space(size: 8.0),
          ColoredCardButton(
            label: 'Aspek Membaca',
            textColor: colors.whiteColor,
            backgroundColor: colors.darkPurpleColor,
            onIconPressed: () {},
          ),
          const Space(size: 8.0),
          ColoredCardButton(
            label: 'Ringkasan',
            textColor: colors.whiteColor,
            backgroundColor: colors.lightBlueColor,
            onIconPressed: () {},
          ),
        ],
      ),
    );
  }
}
