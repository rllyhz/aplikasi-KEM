import 'package:aplikasi_kem/data/exercise_urls.dart';
import 'package:aplikasi_kem/ui/widgets/buttons/custom_button.dart';
import 'package:aplikasi_kem/ui/widgets/scaffolds/main_detail_scaffold.dart';
import 'package:aplikasi_kem/ui/widgets/utils/space.dart';
import 'package:aplikasi_kem/utils/browsable_action.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_kem/utils/ui/color_utils.dart' as colors;
import 'package:aplikasi_kem/utils/values/sizes.dart' as sizes;
import 'package:aplikasi_kem/utils/routes.dart' as routes;

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
          const Space(size: 24.0),
          CustomButton(
            text: 'Hasil',
            onPressed: () async {
              var success = await openUrl(exerciseResultsUrl);

              if (!success) {
                if (mounted) _showAlertDialog(context);
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

  Future<void> _showAlertDialog(BuildContext context) async {
    var textTheme = Theme.of(context).textTheme;

    await showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(
          'Gagal menelusuri Url',
          style: textTheme.headline1?.copyWith(
            color: colors.darkTextColor,
            fontSize: sizes.textSizeLarge,
          ),
        ),
        icon: const Icon(Icons.warning_rounded, size: 46.0),
        actions: [
          CustomButton(
            text: 'Baik',
            backgroundColor: colors.blueColor,
            textColor: colors.whiteColor,
            onPressed: () {
              routes.navigateUp(ctx);
            },
            type: CustomButtonType.small,
          ),
        ],
      ),
    );
  }
}
