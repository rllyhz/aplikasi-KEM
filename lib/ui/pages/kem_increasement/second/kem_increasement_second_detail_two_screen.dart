import 'package:aplikasi_kem/ui/widgets/texts/paragraph_text.dart';
import 'package:aplikasi_kem/ui/widgets/scaffolds/general_scaffold.dart';
import 'package:aplikasi_kem/ui/widgets/utils/space.dart';
import 'package:aplikasi_kem/ui/widgets/texts/sub_heading_text.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_kem/utils/ui/color_utils.dart' as colors;
import 'package:aplikasi_kem/utils/values/sizes.dart' as sizes;

class KEMIncreasementSecondDetailTwoScreen extends StatelessWidget {
  const KEMIncreasementSecondDetailTwoScreen({super.key});

  static const String route = '/kem-increasement-second-detail-two';

  @override
  Widget build(BuildContext context) {
    return GeneralScaffold(
      appBarTitleTextColor: colors.darkTextColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SubHeadingText(
            text: 'Metode GPID',
          ),
          Space(size: sizes.paragraphNewLineSmall),
          ParagraphText(
            text:
                'Metode GPID merupakan metode membaca yang terdiri atas empat tahap yaitu, goall, plans, implementation, dan development. Goall adalah apa yang diharapkan, dimaksud atau apa tujuan membaca. Tahap awal metode ini adalah menentukan tujuan membaca. Goall dapat dilakukan dengan cara membatasi perhatian, latar belakang, kendala, memusatkan perhatian, dan merumuskan maksud atau tujuan. Selanjutnya, Plans adalah rencana untuk mencapai tujuan. Pada tahap ini, pembaca menyusun strategi untuk mencapai tujuan membaca. Rencana yang dibuat berhubungan dengan teknik baca yang digunakan, bagian-bagian yang akan dibaca, dan rencana-rencana lainnya (misalnya mempersiapkan pensil untuk memberi tanda atau catatan).',
            shouldShowIndentation: true,
            spaceCount: 3,
          ),
          Space(size: sizes.paragraphNewLineSmall),
          ParagraphText(
            text:
                'Implementation adalah pelaksanaan membaca. Pada tahap ini pembaca melakukan kegiatan membaca dengan memperhatikan tujuan yang ingin dicapai dan rencana yang sudah disusun untuk mencapai tujuan tersebut. Pelaksanaan membaca sudah dengan teknik dan pola baca yang direncanakan sehingga pembaca tidak akan membuang-buang waktu dan tidak akan kehilangan pemahaman yang sudah direncanakan. Terakhir, Development adalah proses evaluasi dan proses mengambil simpulan. Pembaca mengevaluasi dengan cara mengecek apakah informasi yang diinginkan pada tahap goall sudah didapat. Jika sudah, berarti kegiatan membaca telah berhasil. Jika belum,berarti kegiatan membaca belum berhasil.',
            shouldShowIndentation: true,
            spaceCount: 3,
          ),
          Space(size: sizes.paragraphNewLineLarge),
        ],
      ),
    );
  }
}
