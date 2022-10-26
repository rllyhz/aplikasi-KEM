import 'package:aplikasi_kem/ui/widgets/paragraph_text.dart';
import 'package:aplikasi_kem/ui/widgets/scaffolds/general_scaffold.dart';
import 'package:aplikasi_kem/ui/widgets/space.dart';
import 'package:aplikasi_kem/ui/widgets/sub_heading_text.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_kem/utils/ui/color_utils.dart' as colors;
import 'package:aplikasi_kem/utils/values/sizes.dart' as sizes;

class KEMIncreasementThirdDetailTwoScreen extends StatelessWidget {
  const KEMIncreasementThirdDetailTwoScreen({super.key});

  static const String route = '/kem-increasement-third-detail-two';

  @override
  Widget build(BuildContext context) {
    return GeneralScaffold(
      appBarTitleTextColor: colors.darkTextColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SubHeadingText(
            text: 'Teknik Scanning',
          ),
          Space(size: sizes.paragraphNewLineSmall),
          ParagraphText(
            text:
                'Istilah lain scanning adalah teknik baca sepintas atau teknik baca tatap. Scanning merupakan teknik membaca sekilas cepat, tetapi teliti dengan maksud menemukan dan memperoleh informasi tertentu atau fakta khusus dari sebuah bacaan. Dalam penggunaannya, pembaca langsung mencari informasi tertentu atau fakta khusus yang diinginkan tanpa memperhatikan atau membaca bagian-bagian lain dalam bacaan yang tidak dicari. Setelah yang dicari ditemukan, pembaca membaca dengan teliti untuik memperoleh atau memahami informasi atau fakta yang dicari. Untuk itu, scanning adalah teknik membaca yang mengabungkan antara membaca cepat dan teliti.',
            shouldShowIndentation: true,
            spaceCount: 3,
          ),
          Space(size: sizes.paragraphNewLineLarge),
        ],
      ),
    );
  }
}
