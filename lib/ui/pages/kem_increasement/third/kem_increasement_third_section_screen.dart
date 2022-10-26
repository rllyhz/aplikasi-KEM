import 'package:aplikasi_kem/ui/pages/kem_increasement/third/kem_increasement_third_detail_one_screen.dart';
import 'package:aplikasi_kem/ui/pages/kem_increasement/third/kem_increasement_third_detail_two_screen.dart';
import 'package:aplikasi_kem/ui/widgets/colored_card.dart';
import 'package:aplikasi_kem/ui/widgets/main_heading_text.dart';
import 'package:aplikasi_kem/ui/widgets/paragraph_text.dart';
import 'package:aplikasi_kem/ui/widgets/scaffolds/general_scaffold.dart';
import 'package:aplikasi_kem/ui/widgets/space.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_kem/utils/values/sizes.dart' as sizes;
import 'package:aplikasi_kem/utils/ui/color_utils.dart' as colors;
import 'package:aplikasi_kem/utils/routes.dart' as routes;
import 'package:flutter_svg/flutter_svg.dart';

class KEMIncreasementThirdSectionScreen extends StatelessWidget {
  const KEMIncreasementThirdSectionScreen({super.key});

  static const String route = '/kem-increasement-third-section';

  @override
  Widget build(BuildContext context) {
    return GeneralScaffold(
      illustrationAssetName:
          'assets/images/kem_increasement/illustration_3.png',
      illustrationWidthInPercentage: 0.4,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const MainHeadingText(
            text: 'Teknik Membaca Cepat',
          ),
          const Space(size: sizes.paragraphNewLineMedium),
          const ParagraphText(
            text:
                'Teknik yang termasuk teknik membaca cepat ada dua. Kedua teknik tersebut adalah skimming dan scanning (Haryadi 2006:156-169).',
            shouldShowIndentation: true,
            spaceCount: 3,
          ),
          const Space(size: 32.0),
          _buildCustomColoredCardButton(context, '1. Teknik Skimming', () {
            routes.navigateTo(
                context, KEMIncreasementThirdDetailOneScreen.route);
          }),
          const Space(size: 12.0),
          _buildCustomColoredCardButton(context, '2. Teknik Scanning', () {
            routes.navigateTo(
                context, KEMIncreasementThirdDetailTwoScreen.route);
          }),
          const Space(size: sizes.paragraphNewLineLarge),
        ],
      ),
    );
  }

  ColoredCard _buildCustomColoredCardButton(
          BuildContext ctx, String label, Function()? onIconPressed) =>
      ColoredCard(
        padding: const EdgeInsets.only(
            left: 32.0, right: 8.0, top: 8.0, bottom: 8.0),
        backgroundColor: colors.greyColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(label,
                style: Theme.of(ctx).textTheme.headline2?.copyWith(
                      color: colors.darkTextColor,
                    )),
            IconButton(
              padding: const EdgeInsets.all(12.0),
              onPressed: onIconPressed,
              icon: SvgPicture.asset(
                'assets/icons/icon_arrow_right_simple.svg',
                color: colors.darkTextColor,
              ),
              color: colors.darkTextColor,
            ),
          ],
        ),
      );
}
