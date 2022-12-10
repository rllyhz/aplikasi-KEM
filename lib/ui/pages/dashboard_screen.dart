import 'package:aplikasi_kem/ui/pages/exercises/exercise_screen.dart';
import 'package:aplikasi_kem/ui/pages/kem/kem_screen.dart';
import 'package:aplikasi_kem/ui/pages/kem_increasement/kem_increasement_screen.dart';
import 'package:aplikasi_kem/ui/pages/kem_measurement/kem_measurement_screen.dart';
import 'package:aplikasi_kem/ui/pages/reading/reading_screen.dart';
import 'package:aplikasi_kem/ui/pages/result/result_screen.dart';
import 'package:aplikasi_kem/ui/widgets/surfaces/colored_card.dart';
import 'package:aplikasi_kem/ui/widgets/buttons/illustration_card_button.dart';
import 'package:aplikasi_kem/ui/widgets/utils/space.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_kem/utils/ui/color_utils.dart' as colors;
import 'package:aplikasi_kem/utils/values/sizes.dart' as sizes;
import 'package:aplikasi_kem/utils/routes.dart' as routes;
import 'package:flutter_svg/flutter_svg.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  static String route = '/dashboard';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            // top background
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/images/dashboard/top_background.png',
                fit: BoxFit.fitWidth,
              ),
            ),

            // Content
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding:
                    const EdgeInsets.only(top: 86.0, left: 8.0, right: 8.0),
                child: _buildContent(context),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    const paddingCard =
        EdgeInsets.only(left: 18.0, right: 12.0, top: 12.0, bottom: 8.0);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        // Greeting card
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: sizes.detailScreenHorizontalPaddingSmall,
          ),
          child: ColoredCard(
            backgroundColor: colors.whiteColor,
            blurRadius: 12.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Halo👋',
                      style: Theme.of(context).textTheme.headline1?.copyWith(
                            color: colors.blueColor,
                            fontSize: 32.0,
                          ),
                    ),
                    Text(
                      'Selamat Datang',
                      style: Theme.of(context).textTheme.bodyText1?.copyWith(
                            fontSize: 20.0,
                          ),
                    ),
                  ],
                ),
                SvgPicture.asset('assets/icons/icon_logo_colored.svg'),
              ],
            ),
          ),
        ),

        const Space(
          size: 32.0,
        ),

        // Button Menu
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: sizes.detailScreenHorizontalPaddingMedium,
          ),
          child: Text(
            'Hai apa yang kamu cari?',
            textAlign: TextAlign.start,
            style: Theme.of(context).textTheme.headline2?.copyWith(
                  fontSize: sizes.textSizeLarge,
                  color: colors.darkTextColor,
                ),
          ),
        ),

        const Space(
          size: 16.0,
        ),

        GridView.count(
          padding: const EdgeInsets.symmetric(
            horizontal: sizes.detailScreenHorizontalPaddingSmall,
          ),
          physics: const NeverScrollableScrollPhysics(),
          mainAxisSpacing: 12.0,
          crossAxisSpacing: 12.0,
          shrinkWrap: true,
          crossAxisCount: 2,
          childAspectRatio: 2 / 2.45,
          children: [
            IllustrationCardButton(
              text: '1. Materi Membaca',
              illustrationPath: 'assets/images/dashboard/reading.png',
              backgroundColor: colors.redColor,
              padding: paddingCard,
              textColor: colors.whiteColor,
              maxTextWidthInPercentage: 20.0,
              onIconPressed: () {
                routes.navigateTo(context, ReadingScreen.route);
              },
            ),
            IllustrationCardButton(
              text: '2. Materi KEM',
              illustrationPath:
                  'assets/images/dashboard/girls_study_together.png',
              backgroundColor: colors.orangeColor,
              padding: paddingCard,
              textColor: colors.whiteColor,
              maxTextWidthInPercentage: 20.0,
              onIconPressed: () {
                routes.navigateTo(context, KEMScreen.route);
              },
            ),
            IllustrationCardButton(
              text: '3. Pengukuran KEM',
              illustrationPath: 'assets/images/dashboard/web_page_update.png',
              backgroundColor: colors.limeColor,
              padding: paddingCard,
              textColor: colors.whiteColor,
              onIconPressed: () {
                routes.navigateTo(context, KEMMeasurementScreen.route);
              },
            ),
            IllustrationCardButton(
              text: '4. Latihan',
              illustrationPath:
                  'assets/images/dashboard/online_business_negotiation.png',
              backgroundColor: colors.darkPurpleColor,
              padding: paddingCard,
              textColor: colors.whiteColor,
              onIconPressed: () {
                routes.navigateTo(context, ExerciseScreen.route);
              },
            ),
            IllustrationCardButton(
              text: '5. Hasil',
              illustrationPath: 'assets/images/dashboard/completed_form.png',
              backgroundColor: colors.greenColor,
              padding: paddingCard,
              textColor: colors.whiteColor,
              onIconPressed: () {
                routes.navigateTo(context, ResultScreen.route);
              },
            ),
            IllustrationCardButton(
              text: '6. Peningkatan KEM',
              illustrationPath:
                  'assets/images/dashboard/man_flying_on_a_rocket.png',
              backgroundColor: colors.lightBlueColor,
              padding: paddingCard,
              textColor: colors.whiteColor,
              onIconPressed: () {
                routes.navigateTo(context, KEMIncreasementScreen.route);
              },
            ),
          ],
        ),

        const Space(
          size: 18.0,
        ),
      ],
    );
  }
}
