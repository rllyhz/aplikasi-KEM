import 'package:aplikasi_kem/ui/widgets/custom_button.dart';
import 'package:aplikasi_kem/ui/widgets/main_detail_scaffold.dart';
import 'package:aplikasi_kem/ui/widgets/space.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_kem/utils/ui/color_utils.dart' as colors;

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  static const String route = '/result';

  @override
  Widget build(BuildContext context) {
    return MainDetailScaffold(
      appBarTitleText: 'Hasil',
      appBarTitleTextColor: colors.darkTextColor,
      illustrationAssetName: 'assets/images/result/main_illustration.png',
      illustrationWidthInPercentage: 0.54,
      tagline:
          'Sedikit kemajuan setiap hari di dalam dirimu menambah sesuatu hingga hasil yang besar',
      body: Column(
        children: [
          const Space(size: 24.0),
          CustomButton(
            text: 'Hasil',
            onPressed: () {},
            backgroundColor: colors.blueColor,
            textColor: colors.whiteColor,
            type: CustomButtonType.large,
          ),
        ],
      ),
    );
  }
}
