import 'package:aplikasi_kem/ui/widgets/highlight_text_box.dart';
import 'package:aplikasi_kem/ui/widgets/paragraph_list.dart';
import 'package:aplikasi_kem/ui/widgets/paragraph_text.dart';
import 'package:aplikasi_kem/ui/widgets/scaffolds/general_scaffold.dart';
import 'package:aplikasi_kem/ui/widgets/space.dart';
import 'package:aplikasi_kem/utils/ui/color_utils.dart' as colors;
import 'package:aplikasi_kem/utils/ui/text_numbering_helpers.dart';
import 'package:aplikasi_kem/utils/values/sizes.dart' as sizes;
import 'package:flutter/material.dart';

class KEMMeasurementThirdSectionScreen extends StatelessWidget {
  const KEMMeasurementThirdSectionScreen({super.key});

  static const String route = '/kem-measurement-third-section';

  @override
  Widget build(BuildContext context) {
    return GeneralScaffold(
      appBarTitleTextColor: colors.darkTextColor,
      illustrationAssetName: 'assets/images/kem_measurement/illustration_3.png',
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          ParagraphText(
            text:
                'Standarisasi KEM pembaca terkait dengan dua unsur, yaitu kecepatan baca dan pemahaman isi bacaan. Bedasarkan hasil penelitian para ahli membaca di Amerika Serikat, kecepatan yang layak untuk siswa kelas 6 sekolah dasar kurang lebih 200 kpm (kata per menit), untuk siswa tingkat lanjutan pertama antara 200-250 kpm, untuk siswa tingkat lanjutan atas antara 250-325 kpm, dan untuk mahasiswa antara 300-400 kpm. Pemahaman isi bacaan yang layak minimal 70%.',
            shouldShowIndentation: true,
            spaceCount: 3,
          ),
          Space(size: sizes.paragraphNewLineSmall),
          ParagraphText(
            text:
                'Sedangkan menurut Harjasujana dan Mulyati, standariasai KEM sebagai berikut:',
          ),
          Space(size: sizes.paragraphNewLineSmall),
          HighlightTextBox(
            backgroundColor: colors.greyColor,
            child: ParagraphList(
              numberingType: NumberingType.bullet,
              numberingSuffix: NumberingSuffix.bullet,
              list: [
                'Tingkat SD	: 200 x 70% = 140 kpm',
                'Tingkat SMP	: 200 x 70% s.d. 250 x 70% = 140-175 kpm',
                'Tingkat SMA	: 250 x 70% s.d. 350 x 70% = 175-245 kpm',
                'Tingkat PT	: 350 x 70% s.d. 400 x 70% = 245-280 kpm',
              ],
            ),
          ),
          Space(size: sizes.paragraphNewLineSmall),
          ParagraphText(
              text:
                  'Menurut Nurhadi (2004), standarisasi kecepatan baca untuk masing-masing jenjang pendidikan adalah sebagai berikut:'),
          Space(size: sizes.paragraphNewLineSmall),
          HighlightTextBox(
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

          Space(size: sizes.paragraphNewLineSmall),
          ParagraphText(
            text:
                'Standarisasi tidak hanya kecepatan baca saja, tetapi juga pemahaman isi bacaanya. Pemahaman isi bacaan untuk masing-masing jenjang pendidikan adalah dapat menjawab pertanyaan bacaan antara 40-60%.',
          ),

          //
          Space(size: sizes.paragraphNewLineLarge),
        ],
      ),
    );
  }
}
