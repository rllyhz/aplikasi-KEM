import 'package:aplikasi_kem/ui/pages/kem_increasement/fourth/kem_increasement_fourth_detail_one_screen.dart';
import 'package:aplikasi_kem/ui/pages/kem_increasement/fourth/kem_increasement_fourth_detail_three_screen.dart';
import 'package:aplikasi_kem/ui/pages/kem_increasement/fourth/kem_increasement_fourth_detail_two_screen.dart';
import 'package:aplikasi_kem/ui/widgets/colored_card.dart';
import 'package:aplikasi_kem/ui/widgets/paragraph_text.dart';
import 'package:aplikasi_kem/ui/widgets/scaffolds/general_scaffold.dart';
import 'package:aplikasi_kem/ui/widgets/space.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_kem/utils/values/sizes.dart' as sizes;
import 'package:aplikasi_kem/utils/ui/color_utils.dart' as colors;
import 'package:aplikasi_kem/utils/routes.dart' as routes;
import 'package:flutter_svg/flutter_svg.dart';

class KEMIncreasementFourthSectionScreen extends StatelessWidget {
  const KEMIncreasementFourthSectionScreen({super.key});

  static const String route = '/kem-increasement-fourth-section';

  @override
  Widget build(BuildContext context) {
    return GeneralScaffold(
      appBarTitleText: 'Ringkasan',
      appBarTitleTextColor: colors.darkTextColor,
      illustrationAssetName:
          'assets/images/kem_increasement/illustration_4.png',
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ParagraphText(
            text:
                'Teknik yang termasuk kedalam teknik membaca cepat ada dua. Kedua teknik tersebut adalah Skimming dan Scanning (Haryadi 2006:156-169).',
            shouldShowIndentation: true,
            spaceCount: 3,
          ),
          const Space(size: 32.0),
          _buildCustomColoredCardButton(context, '1. Upaya Peningkatan KEM',
              () {
            routes.navigateTo(
                context, KEMIncreasementFourthDetailOneScreen.route);
          }),
          const Space(size: 12.0),
          _buildCustomColoredCardButton(context, '2. Metode Membaca', () {
            routes.navigateTo(
                context, KEMIncreasementFourthDetailTwoScreen.route);
          }),
          const Space(size: 12.0),
          _buildCustomColoredCardButton(context, '3. Teknik Membaca Cepat', () {
            routes.navigateTo(
                context, KEMIncreasementFourthDetailThreeScreen.route);
          }),
          const Space(size: sizes.paragraphNewLineLarge),
          const Space(size: sizes.paragraphNewLineLarge),
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
