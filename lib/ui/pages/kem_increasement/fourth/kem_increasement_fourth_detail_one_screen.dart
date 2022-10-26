import 'package:aplikasi_kem/ui/widgets/texts/main_heading_text.dart';
import 'package:aplikasi_kem/ui/widgets/texts/paragraph_list.dart';
import 'package:aplikasi_kem/ui/widgets/texts/paragraph_text.dart';
import 'package:aplikasi_kem/ui/widgets/scaffolds/general_scaffold.dart';
import 'package:aplikasi_kem/ui/widgets/utils/space.dart';
import 'package:aplikasi_kem/utils/ui/text_numbering_helpers.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_kem/utils/ui/color_utils.dart' as colors;
import 'package:aplikasi_kem/utils/values/sizes.dart' as sizes;

class KEMIncreasementFourthDetailOneScreen extends StatelessWidget {
  const KEMIncreasementFourthDetailOneScreen({super.key});

  static const String route = '/kem-increasement-fourth-detail-one';

  @override
  Widget build(BuildContext context) {
    return GeneralScaffold(
      appBarTitleTextColor: colors.darkTextColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          MainHeadingText(
            text: 'Upaya Peningkatan KEM',
          ),
          Space(size: sizes.paragraphNewLineSmall),
          ParagraphText(
            text:
                'Agar KEM meningkat, pembaca perlu melakukan kegiatan membaca sesuai saran berikut ini.',
            shouldShowIndentation: true,
            spaceCount: 3,
          ),
          Space(size: sizes.paragraphNewLineSmall),
          ParagraphList(
            numberingSuffix: NumberingSuffix.parentheses,
            list: [
              'Membaca hendaknya membaca pada kelompok-kelompok kata.',
              'Pembaca hendaknya jangan mengulang-ulang kalimat yang telah dibaca (regresi).',
              'Pembaca hendaknya jangan selalu berhenti lama di awal baris atau kalimat.',
              'Pembaca hendaknya mencari kata-kata kunci yang menjadi tanda awal dari adanya gagasan utama sebuah kalimat.',
              'Pembaca hendaknya mengabaikan kata-kata tugas yang sifatnya berulang-ulang.',
              'Pembaca hendaknya menggerakkan mata dari atas ke bawah jika bacaannya dalam bentuk kolom-kolom.',
            ],
          ),
          Space(size: sizes.paragraphNewLineSmall),
          ParagraphText(
            text:
                'Pembaca yang ingin KEM-nya meningkat maka mereka perlu menyingkirkan hambatan dalam membaca cepat. Hambatan-hambatan dalam membaca cepat adalah berikut ini.',
            shouldShowIndentation: true,
            spaceCount: 3,
          ),
          Space(size: sizes.paragraphNewLineSmall),
          ParagraphList(
            numberingSuffix: NumberingSuffix.parentheses,
            list: [
              'Pembaca menyuarakan apa yang dibacanya.',
              'Pembaca membaca kata demi kata.',
              'Pembaca menggerakan-gerakan kepala atau anggota tubuh yang lainnya.',
              'Konsentrasi berpikir pembaca terpecah dengan hal-hal lain di luar bacaan.',
              'Pembaca berguman atau bersenandung.',
              'Pembaca mengulang-ulang unit-unit bacaan yang telah dibacanya.',
            ],
          ),
          Space(size: sizes.paragraphNewLineLarge),
        ],
      ),
    );
  }
}
