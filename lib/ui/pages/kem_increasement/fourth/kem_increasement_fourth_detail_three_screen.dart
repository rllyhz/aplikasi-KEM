import 'package:aplikasi_kem/ui/widgets/main_heading_text.dart';
import 'package:aplikasi_kem/ui/widgets/paragraph_text.dart';
import 'package:aplikasi_kem/ui/widgets/scaffolds/general_scaffold.dart';
import 'package:aplikasi_kem/ui/widgets/space.dart';
import 'package:aplikasi_kem/ui/widgets/sub_heading_text.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_kem/utils/ui/color_utils.dart' as colors;
import 'package:aplikasi_kem/utils/values/sizes.dart' as sizes;

class KEMIncreasementFourthDetailThreeScreen extends StatelessWidget {
  const KEMIncreasementFourthDetailThreeScreen({super.key});

  static const String route = '/kem-increasement-fourth-detail-three';

  @override
  Widget build(BuildContext context) {
    return GeneralScaffold(
      appBarTitleTextColor: colors.darkTextColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          MainHeadingText(
            text: 'Teknik Membaca Cepat',
          ),
          Space(size: sizes.paragraphNewLineLarge),

          // 1
          SubHeadingText(
            text: 'Teknik Skimming',
            isNumbering: true,
            numberingValue: '1',
          ),
          Space(size: sizes.paragraphNewLineSmall),
          ParagraphText(
            text:
                'Skimming adalah terbang halaman demi halaman atau menjelajahi halaman demi halaman bacaan secara cepat. Berdasarkan pengertian tersebut skimming adalah teknik membaca dengan menjelajahi atau menyapu bacaan dengan cepat untuk memahami atau menemukan hal-hal yang penting. Jenis teknik membaca yang termasuk dalam teknik skimming adalah skipping, sampling, locating, dan previewing.',
            shouldShowIndentation: true,
            spaceCount: 3,
          ),

          // 2
          Space(size: sizes.paragraphNewLineMedium),
          SubHeadingText(
            text: 'Teknik Scanning',
            isNumbering: true,
            numberingValue: '2',
          ),
          Space(size: sizes.paragraphNewLineSmall),
          ParagraphText(
            text:
                'Scanning merupakan teknik membaca sekilas cepat, tetapi teliti dengan maksud menemukan dan memperoleh informasi tertentu atau fakta khusus dari sebuah bacaan. Dalam penggunaannya, pembaca langsung mencari informasi tertentu atau fakta khusus yang diinginkan tanpa memperhatikan atau membaca bagian-bagian lain dalam bacaan yang tidak dicari.',
            shouldShowIndentation: true,
            spaceCount: 3,
          ),

          Space(size: sizes.paragraphNewLineLarge),
        ],
      ),
    );
  }
}
