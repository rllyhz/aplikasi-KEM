import 'package:aplikasi_kem/ui/widgets/surfaces/highlight_text_box.dart';
import 'package:aplikasi_kem/ui/widgets/surfaces/indentation_box.dart';
import 'package:aplikasi_kem/ui/widgets/texts/main_heading_text.dart';
import 'package:aplikasi_kem/ui/widgets/texts/paragraph_list.dart';
import 'package:aplikasi_kem/ui/widgets/texts/paragraph_text.dart';
import 'package:aplikasi_kem/ui/widgets/scaffolds/general_scaffold.dart';
import 'package:aplikasi_kem/ui/widgets/utils/space.dart';
import 'package:aplikasi_kem/ui/widgets/texts/sub_heading_text.dart';
import 'package:aplikasi_kem/utils/ui/color_utils.dart' as colors;
import 'package:aplikasi_kem/utils/ui/text_numbering_helpers.dart';
import 'package:aplikasi_kem/utils/values/sizes.dart' as sizes;
import 'package:flutter/material.dart';

class KEMMeasurementFourthSectionScreen extends StatelessWidget {
  const KEMMeasurementFourthSectionScreen({super.key});

  static const String route = '/kem-measurement-fourth-section';

  @override
  Widget build(BuildContext context) {
    return GeneralScaffold(
      appBarTitleTextColor: colors.darkTextColor,
      illustrationAssetName: 'assets/images/kem_measurement/illustration_1.png',
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const MainHeadingText(
            text: 'Ringkasan',
          ),
          const Space(
            size: sizes.paragraphNewLineLarge,
          ),
          const Space(
            size: sizes.paragraphNewLineLarge,
          ),

          // a
          const SubHeadingText(
            text: 'Alat Pengukuran KEM',
            isNumbering: true,
            numberingValue: 'a',
            numberingSuffix: NumberingSuffix.parentheses,
          ),
          const Space(
            size: sizes.paragraphNewLineSmall,
          ),
          const ParagraphText(
            text:
                'Pengukuran KEM perlu persiapan terlebih dahulu untuk sampai pada penggunaan rumus penghitungan KEM. Persiapan yang di lakukan antara lain adalah mempersiapkan alat pengukuran KEM tersebut, antara lain:',
            shouldShowIndentation: true,
            spaceCount: 3,
          ),
          const Space(
            size: sizes.paragraphNewLineSmall,
          ),
          const IndentationBox(
            size: 1.0,
            children: [
              ParagraphList(
                list: [
                  'Menyediakan teks atau wacana sebagai bahan bacaan. Bacaan yang disiapkan perlu mempertimbangkan aspek panjang bacaan dan tingkat kesulitan bacaan.',
                  'Menyiapkan alat pengukuran waktu seperti jam tangan atau stopwatch.',
                  'Menyiapkan tes pemahaman isi bacaan. Tes yang dibuat berdasarkan pertimbangan tujuan membaca dan tujuan pembelajaran.',
                ],
              ),
            ],
          ),

          // b
          const Space(size: sizes.paragraphNewLineMedium),

          const SubHeadingText(
            text: 'Cara Mengukur KEM',
            isNumbering: true,
            numberingValue: 'b',
            numberingSuffix: NumberingSuffix.parentheses,
          ),
          const Space(
            size: sizes.paragraphNewLineSmall,
          ),
          HighlightTextBox(
            backgroundColor: colors.greyColor,
            child: Image.asset(
              'assets/images/kem_measurement/formula.png',
              fit: BoxFit.fitWidth,
            ),
          ),
          const Space(size: sizes.paragraphNewLineSmall),
          const ParagraphText(
            text: 'K       : jumlah kata yang di baca',
          ),
          const ParagraphText(
            text: 'Wm   : waktu tempuh baca dalam satuan menit',
          ),
          const ParagraphText(
            text: 'Wd    : waktu tempuh baca dalam satuan detik',
          ),
          const ParagraphText(
            text: 'B       : skor bobot tes',
          ),
          const ParagraphText(
            text: 'SI      : skor ideal',
          ),
          const ParagraphText(
            text: 'Kpm  : kata per menit',
          ),

          // c
          const Space(size: sizes.paragraphNewLineMedium),

          const SubHeadingText(
            text: 'Standarisasi KEM',
            isNumbering: true,
            numberingValue: 'c',
            numberingSuffix: NumberingSuffix.parentheses,
          ),
          const Space(
            size: sizes.paragraphNewLineSmall,
          ),
          const ParagraphText(
            text:
                'Standarisasi kecepatan efektif membaca untuk masing-masing jenjang pendidikan adalah sebagai berikut:',
            shouldShowIndentation: true,
            spaceCount: 3,
          ),
          const Space(
            size: sizes.paragraphNewLineSmall,
          ),
          const HighlightTextBox(
            backgroundColor: colors.greyColor,
            child: ParagraphList(
              numberingType: NumberingType.bullet,
              numberingSuffix: NumberingSuffix.bullet,
              list: [
                'SD atau SMP	: 200 kata/menit',
                'SMTA		: 250 kata/menit',
                'Mahasiswa	: 325 kata/menit',
                'Pascasarjana	: 400 kata/menit',
                'Orang dewasa	: 200 kata/menit',
              ],
            ),
          ),

          //
          const Space(size: sizes.paragraphNewLineLarge),
        ],
      ),
    );
  }
}
