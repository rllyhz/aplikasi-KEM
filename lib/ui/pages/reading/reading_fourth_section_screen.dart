import 'package:aplikasi_kem/ui/widgets/scaffolds/banner_scaffold.dart';
import 'package:aplikasi_kem/ui/widgets/texts/paragraph_text.dart';
import 'package:aplikasi_kem/ui/widgets/utils/space.dart';
import 'package:aplikasi_kem/ui/widgets/texts/sub_heading_text.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_kem/utils/ui/color_utils.dart' as colors;
import 'package:aplikasi_kem/utils/values/sizes.dart' as sizes;

class ReadingFourthSectionScreen extends StatelessWidget {
  const ReadingFourthSectionScreen({super.key});

  static const String route = '/reading-fourth-section';

  @override
  Widget build(BuildContext context) {
    return BannerScaffold(
      appBarTitleTextColor: colors.darkTextColor,
      bannerAssetName: 'assets/images/reading/banner_4.png',
      illustrationDescription:
          'Bagus sedang membaca sebuah kalimat dengan mengeja kata demi kata karena ia belum mampu atau terampil membaca kata. Berbeda dengan Bagus, Via membaca kalimat tanpa dieja sebab dia sudah terampil membaca kalimat.',
      headingText: 'Berdasarkan ilustrasi tersebut, apa saja aspek membaca?',
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          ParagraphText(
            text:
                'Menurut Haryadi (2015) aspek membaca ada dua, yaitu aspek mekanik dan konseptual.',
            shouldShowIndentation: true,
            spaceCount: 3,
          ),

          Space(
            size: sizes.paragraphNewLineLarge,
          ),

          // a
          SubHeadingText(
            text: 'Aspek mekanik',
            isNumbering: true,
            numberingValue: 'a',
          ),
          Space(
            size: sizes.paragraphNewLineSmall,
          ),
          ParagraphText(
            text:
                'Aspek mekanik merupakan gerakan mata melihat unsur-unsur bacaan. Unsur bacaan yang di maksud adalah kata, frasa, kalimat dan paragraf. Sesuai dengan unsur bacaan, aspek mekanik terdiri dari empat, yaitu aspek makanik kata, frasa, kalimat dan paragraf.',
            shouldShowIndentation: true,
            spaceCount: 3,
          ),

          Space(
            size: sizes.paragraphNewLineLarge,
          ),

          // a
          SubHeadingText(
            text: 'Aspek konseptual',
            isNumbering: true,
            numberingValue: 'b',
          ),
          Space(
            size: sizes.paragraphNewLineSmall,
          ),
          ParagraphText(
            text:
                'Aspek konseptuan ialah cara otak memahami untuk menangkap makna-makna yang terkandung dalam unsur bacaan. Aspek ini juga ada empat, yaitu aspek konseptual kata, frasa, kalimat dan paragraf.',
            shouldShowIndentation: true,
            spaceCount: 3,
          ),

          Space(
            size: sizes.detailScreenVerticalPaddingMedium,
          ),
        ],
      ),
    );
  }
}
