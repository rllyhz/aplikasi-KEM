import 'package:aplikasi_kem/ui/pages/kem_increasement/second/kem_increasement_second_detail_four_screen.dart';
import 'package:aplikasi_kem/ui/pages/kem_increasement/second/kem_increasement_second_detail_one_screen.dart';
import 'package:aplikasi_kem/ui/pages/kem_increasement/second/kem_increasement_second_detail_three_screen.dart';
import 'package:aplikasi_kem/ui/pages/kem_increasement/second/kem_increasement_second_detail_two_screen.dart';
import 'package:aplikasi_kem/ui/widgets/surfaces/colored_card.dart';
import 'package:aplikasi_kem/ui/widgets/texts/main_heading_text.dart';
import 'package:aplikasi_kem/ui/widgets/texts/paragraph_text.dart';
import 'package:aplikasi_kem/ui/widgets/scaffolds/general_scaffold.dart';
import 'package:aplikasi_kem/ui/widgets/utils/space.dart';
import 'package:aplikasi_kem/utils/values/sizes.dart' as sizes;
import 'package:aplikasi_kem/utils/ui/color_utils.dart' as colors;
import 'package:aplikasi_kem/utils/routes.dart' as routes;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class KEMIncreasementSecondSectionScreen extends StatelessWidget {
  const KEMIncreasementSecondSectionScreen({super.key});

  static const String route = '/kem-increasement-second-section';

  @override
  Widget build(BuildContext context) {
    return GeneralScaffold(
      illustrationAssetName:
          'assets/images/kem_increasement/illustration_2.png',
      illustrationWidthInPercentage: 0.6,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const MainHeadingText(
            text: 'Metode Membaca Cepat',
          ),
          const Space(size: sizes.paragraphNewLineMedium),
          const ParagraphText(
            text:
                'Metode yang dapat digunakan supaya pembaca dapat membaca secara efektif dan efisien telah diungkapkan oleh beberapa ahli. Metode-metode tersebut antara lain P2R, GPID, PACER, dan SQ3R (Haryadi 2006:91-106).',
            shouldShowIndentation: true,
            spaceCount: 3,
          ),
          const Space(size: 32.0),
          _buildCustomColoredCardButton(context, '1. Metode P2R', () {
            routes.navigateTo(
                context, KEMIncreasementSecondDetailOneScreen.route);
          }),
          const Space(size: 12.0),
          _buildCustomColoredCardButton(context, '2. Metode GPID', () {
            routes.navigateTo(
                context, KEMIncreasementSecondDetailTwoScreen.route);
          }),
          const Space(size: 12.0),
          _buildCustomColoredCardButton(context, '3. Metode Pacer', () {
            routes.navigateTo(
                context, KEMIncreasementSecondDetailThreeScreen.route);
          }),
          const Space(size: 12.0),
          _buildCustomColoredCardButton(context, '4. Metode SQ3R', () {
            routes.navigateTo(
                context, KEMIncreasementSecondDetailFourScreen.route);
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
              icon: Center(
                child: SvgPicture.asset(
                  'assets/icons/icon_arrow_right_simple.svg',
                  theme: const SvgTheme(
                    fontSize: sizes.textSizeMedium,
                  ),
                  color: colors.darkTextColor,
                  fit: BoxFit.cover,
                ),
              ),
              color: colors.darkTextColor,
            ),
          ],
        ),
      );
}
