import 'package:aplikasi_kem/data/exercise_urls.dart';
import 'package:aplikasi_kem/ui/widgets/buttons/custom_button.dart';
import 'package:aplikasi_kem/ui/widgets/scaffolds/main_detail_scaffold.dart';
import 'package:aplikasi_kem/ui/widgets/utils/space.dart';
import 'package:aplikasi_kem/utils/browsable_action.dart';
import 'package:aplikasi_kem/utils/ui/theme_utils.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_kem/utils/ui/color_utils.dart' as colors;
import 'package:aplikasi_kem/utils/values/sizes.dart' as sizes;

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  static const String route = '/result';

  bool get mounted {
    try {
      (this as Element).widget;
      return true;
    } on TypeError catch (_) {
      return false;
    }
  }

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
          Text(
            'Rumus KEM:',
            style: Theme.of(context).textTheme.headline2?.copyWith(
                  fontSize: sizes.textSizeHeading,
                  color: colors.darkTextColor,
                ),
          ),
          const Space(size: 12.0),
          Image.asset('assets/images/kem_measurement/formula.png'),
          const Space(size: 32.0),
          CustomButton(
            text: 'Hasil',
            onPressed: () async {
              var success = await openUrl(exerciseResultsUrl);

              if (!success) {
                if (mounted) showAlertDialog(context);
              }
            },
            backgroundColor: colors.blueColor,
            textColor: colors.whiteColor,
            type: CustomButtonType.large,
          ),
        ],
      ),
    );
  }
}
