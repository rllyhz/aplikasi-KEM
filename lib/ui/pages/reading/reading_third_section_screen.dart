import 'package:aplikasi_kem/ui/widgets/scaffolds/banner_scaffold.dart';
import 'package:aplikasi_kem/ui/widgets/surfaces/highlight_text_box.dart';
import 'package:aplikasi_kem/ui/widgets/texts/paragraph_list.dart';
import 'package:aplikasi_kem/ui/widgets/texts/paragraph_text.dart';
import 'package:aplikasi_kem/ui/widgets/utils/space.dart';
import 'package:aplikasi_kem/utils/ui/text_numbering_helpers.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_kem/utils/ui/color_utils.dart' as colors;
import 'package:aplikasi_kem/utils/values/sizes.dart' as sizes;

class ReadingThirdSectionScreen extends StatelessWidget {
  const ReadingThirdSectionScreen({super.key});

  static const String route = '/reading-third-section';

  @override
  Widget build(BuildContext context) {
    return BannerScaffold(
      appBarTitleTextColor: colors.darkTextColor,
      bannerAssetName: 'assets/images/reading/banner_3.png',
      illustrationDescription:
          'Rudi sangat senang karena hanya dia yang dapat menjawab pertanyaan dari Bu Puput. Sebelum pelajaran Bahasa Indonesia, Rudi sudah membaca materi tentang teks eksposisi.',
      headingText: 'Berdasarkan ilustrasi tersebut, apa saja manfaat membaca?',
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          ParagraphText(
            text:
                'Manfaat membaca adalah guna, faedah atau sesuatu yang di peroleh dari kegiatan membaca. Manfaat membaca merupakan hasil yang di dapat pembaca setelah membaca. Jika tujuan membaca di tentukan sebelum mebaca dan saat membaca, maka manfaat membaca di peroleh setelah membaca. Salah satu ahli yang menjelaskan tentang manfaat membaca adalah Hernowo, menurut Hernowo manfaat membaca ada 3 yaitu:',
            shouldShowIndentation: true,
            spaceCount: 3,
          ),
          Space(
            size: sizes.paragraphNewLineMedium,
          ),
          HighlightTextBox(
            child: ParagraphList(
              numberingSuffix: NumberingSuffix.parentheses,
              list: [
                'Membaca menambah kosakata dan pengetahuan akan tata bahasa dan sintaksis.',
                'Membaca mengajak seseorang untuk berintropeksi atau melontarkan pertanyaan serius mengenai nilai, perasaan dan hubungan kita dengan orang lain.',
                'Membaca memicu imajinasi. Dengan banyak membaca, sesorang dapat menyerap sebanyak mungkin pengetahuan atau pengalaman dari orang lain, selain itu, sesorang dapat menyelami perasaan orang lain dari buku yang di bacanya.',
              ],
            ),
          ),
          Space(
            size: sizes.detailScreenVerticalPaddingMedium,
          ),
        ],
      ),
    );
  }
}
