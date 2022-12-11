import 'package:aplikasi_kem/ui/widgets/scaffolds/banner_scaffold.dart';
import 'package:aplikasi_kem/ui/widgets/surfaces/indentation_box.dart';
import 'package:aplikasi_kem/ui/widgets/texts/paragraph_list.dart';
import 'package:aplikasi_kem/ui/widgets/texts/paragraph_text.dart';
import 'package:aplikasi_kem/ui/widgets/utils/space.dart';
import 'package:aplikasi_kem/ui/widgets/texts/sub_heading_text.dart';
import 'package:aplikasi_kem/utils/ui/text_numbering_helpers.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_kem/utils/ui/color_utils.dart' as colors;
import 'package:aplikasi_kem/utils/values/sizes.dart' as sizes;

class ReadingFifthSectionScreen extends StatelessWidget {
  const ReadingFifthSectionScreen({super.key});

  static const String route = '/reading-fifth-section';

  @override
  Widget build(BuildContext context) {
    return BannerScaffold(
      appBarTitleTextColor: colors.darkTextColor,
      bannerAssetName: 'assets/images/reading/banner_5.png',
      headingText: 'Ringkasan',
      shouldShowAudio: true,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          // a
          SubHeadingText(
            text: 'Pengertian Membaca',
            isNumbering: true,
            numberingValue: 'a',
          ),
          Space(
            size: sizes.paragraphNewLineSmall,
          ),
          ParagraphText(
            text:
                'Membaca adalah melihat serta memahami isi dari apa yang tertulis (dengan melisankan atau hanya dalam hati). Membaca secara umum dapat di artikan sebagai sebagai proses pengenalan dan penyandian kembali dan pemahaman simbol tertulis kemudian memberikan reaksi kritis terhadap bacaan dan mampu berpikir secara kreatif berdasarkan hasil bacaan yang kepentingan sehari-hari.',
            shouldShowIndentation: true,
            spaceCount: 3,
          ),

          Space(
            size: sizes.paragraphNewLineMedium,
          ),

          ParagraphText(
            text: 'Pengertian membaca di klasifikasikan menjadi 4 yaitu:',
          ),
          ParagraphList(
            numberingSuffix: NumberingSuffix.parentheses,
            list: [
              'Pengertian membaca yang belum kompleks',
              'Pengertian membaca cukup kompleks',
              'Pengertian membaca kompleks',
              'Pengertian membaca sangat kompleks',
            ],
          ),

          Space(
            size: sizes.paragraphNewLineLarge,
          ),

          // b
          SubHeadingText(
            text: 'Tujuan Membaca',
            isNumbering: true,
            numberingValue: 'b',
          ),
          Space(
            size: sizes.paragraphNewLineSmall,
          ),
          ParagraphText(
            text:
                'Tujuan membaca merupakan sesuatu yang ingin di capai atau di dapat oleh pembaca dari proses membaca yang di lakukanya. Tujuan membaca di bagi menjadi dua yaitu tujuan membaca secara umum dan secara khusus.',
            shouldShowIndentation: true,
            spaceCount: 3,
          ),

          Space(
            size: sizes.detailScreenVerticalPaddingSmall,
          ),

          // sub heading
          IndentationBox(
            size: 4.0,
            children: [
              // 1
              SubHeadingText(
                text: 'Tujuan Umum',
                isNumbering: true,
                numberingValue: '1',
                numberingSuffix: NumberingSuffix.parentheses,
              ),
              Space(
                size: sizes.paragraphNewLineSmall,
              ),
              ParagraphText(
                text:
                    'Tujuan umum atau utama adalah tujuan yang umumnya atau sering kali atau selalu dicanangkan oleh pembaca sewaktu membaca. Tujuan umum membaca menurut ada tiga jenis, yaitu untuk studi, untuk usaha, dan untuk kesenangan.',
                shouldShowIndentation: true,
                spaceCount: 3,
              ),

              Space(
                size: sizes.paragraphNewLineMedium,
              ),

              // 2
              SubHeadingText(
                text: 'Tujuan Khusus',
                isNumbering: true,
                numberingValue: '2',
                numberingSuffix: NumberingSuffix.parentheses,
              ),
              Space(
                size: sizes.paragraphNewLineSmall,
              ),
              ParagraphText(
                text:
                    'Tujuan khusus adalah tujuan yang dicanangkan pemabaca pada saat tertentu sesuai situasi dan kondisi.',
                shouldShowIndentation: true,
                spaceCount: 3,
              ),
            ],
          ),

          Space(
            size: sizes.paragraphNewLineLarge,
          ),

          // c
          SubHeadingText(
            text: 'Manfaat Membaca',
            isNumbering: true,
            numberingValue: 'c',
          ),
          Space(
            size: sizes.paragraphNewLineSmall,
          ),
          ParagraphText(
            text:
                'Manfaat membaca adalah guna. Faedah atau sesuatu yang di peroleh dari kegiatan membaca. Manfaat membaca merupakan hasil yang di dapat pembaca setelah membaca.',
            shouldShowIndentation: true,
            spaceCount: 3,
          ),

          Space(
            size: sizes.paragraphNewLineLarge,
          ),

          // d
          SubHeadingText(
            text: 'Aspek Membaca',
            isNumbering: true,
            numberingValue: 'd',
          ),
          Space(
            size: sizes.paragraphNewLineSmall,
          ),
          ParagraphText(
            text: 'Aspek membaca ada dua, yaitu aspek mekanik dan konseptual. ',
            shouldShowIndentation: true,
            spaceCount: 3,
          ),

          Space(
            size: sizes.detailScreenVerticalPaddingSmall,
          ),

          // sub heading
          IndentationBox(
            size: 5,
            children: [
              // 1
              SubHeadingText(
                text: 'Aspek Mekanik',
                isNumbering: true,
                numberingValue: '1',
                numberingSuffix: NumberingSuffix.parentheses,
              ),
              Space(
                size: sizes.paragraphNewLineSmall,
              ),
              ParagraphText(
                text:
                    'Aspek mekanik merupakan gerakan mata melihat unsur-unsur bacaan. Unsur bacaan yang di maksud adalah kata, frasa, kalimat dan paragraf.',
                shouldShowIndentation: true,
                spaceCount: 3,
              ),

              Space(
                size: sizes.paragraphNewLineMedium,
              ),

              // 2
              SubHeadingText(
                text: 'Aspek Konseptual',
                isNumbering: true,
                numberingValue: '2',
                numberingSuffix: NumberingSuffix.parentheses,
              ),
              Space(
                size: sizes.paragraphNewLineSmall,
              ),
              ParagraphText(
                text:
                    'Aspek konseptuan ialah cara otak memahami untuk menangkap makna-makna yang terkandung dalam unsur bacaan.',
                shouldShowIndentation: true,
                spaceCount: 3,
              ),
            ],
          ),

          Space(
            size: sizes.paragraphNewLineLarge,
          ),
        ],
      ),
    );
  }
}
