import 'package:aplikasi_kem/ui/widgets/texts/paragraph_list.dart';
import 'package:aplikasi_kem/ui/widgets/texts/paragraph_text.dart';
import 'package:aplikasi_kem/ui/widgets/scaffolds/general_scaffold.dart';
import 'package:aplikasi_kem/ui/widgets/utils/space.dart';
import 'package:aplikasi_kem/utils/ui/color_utils.dart' as colors;
import 'package:aplikasi_kem/utils/ui/text_numbering_helpers.dart';
import 'package:aplikasi_kem/utils/values/sizes.dart' as sizes;
import 'package:flutter/material.dart';

class KEMMeasurementFirstSectionScreen extends StatelessWidget {
  const KEMMeasurementFirstSectionScreen({super.key});

  static const String route = '/kem-measurement-first-section';

  @override
  Widget build(BuildContext context) {
    return GeneralScaffold(
      appBarTitleTextColor: colors.darkTextColor,
      illustrationAssetName: 'assets/images/kem_measurement/illustration_1.png',
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          ParagraphText(
            text:
                'KEM merupakan perpaduan antara kecepatan baca dan pemahaman isi bacaan. Berdasarkan hal itu, pengukuran KEM dilakukan mencari atau menentukan kecepatan baca pembaca, menentukan pemahaman isi bacaan, dan memadukan kedua unsur tersebut. Data pemahaman isi bacaan di peroleh dengan melakukan pengukuran dengan alat pengukuran. Pembaca di tes dengan tes pemahaman, yaitu pembaca diminta menjawab sejumlah pertanyaan dan di nilai.',
            shouldShowIndentation: true,
            spaceCount: 3,
          ),
          Space(size: sizes.paragraphNewLineSmall),
          ParagraphText(
            text:
                'Pengukuran perlu melakukan persiapan terlebih dahulu untuk sampai pada penggunaan rumus penghitungan KEM. Persiapan yang di lakukan antara lain adalah mempersiapkan alat pengukuran KEM tersebut, antara lain:',
            shouldShowIndentation: true,
            spaceCount: 3,
          ),
          Space(size: sizes.paragraphNewLineSmall),
          ParagraphList(
            numberingType: NumberingType.numeric,
            numberingSuffix: NumberingSuffix.parentheses,
            list: [
              'Menyediakan teks atau wacana sebagai bahan bacaan. Bacaan yang disiapkan perlu mempertimbangkan aspek panjang bacaan dan tingkat kesulitan bacaan.',
              'Menyiapkan alat pengukuran waktu seperti jam tangan atau stopwatch.',
              'Menyiapkan tes pemahaman isi bacaan. Tes yang dibuat berdasarkan pertimbangan tujuan membaca dan tujuan pembelajaran.',
            ],
          ),
          Space(size: sizes.paragraphNewLineLarge),
        ],
      ),
    );
  }
}
