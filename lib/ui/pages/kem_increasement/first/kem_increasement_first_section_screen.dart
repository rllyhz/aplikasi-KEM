import 'package:aplikasi_kem/ui/widgets/main_heading_text.dart';
import 'package:aplikasi_kem/ui/widgets/paragraph_list.dart';
import 'package:aplikasi_kem/ui/widgets/paragraph_text.dart';
import 'package:aplikasi_kem/ui/widgets/scaffolds/general_scaffold.dart';
import 'package:aplikasi_kem/ui/widgets/space.dart';
import 'package:aplikasi_kem/utils/ui/text_numbering_helpers.dart';
import 'package:aplikasi_kem/utils/values/sizes.dart' as sizes;
import 'package:flutter/material.dart';

class KEMIncreasementFirstSectionScreen extends StatelessWidget {
  const KEMIncreasementFirstSectionScreen({super.key});

  static const String route = '/kem-increasement-first-section';

  @override
  Widget build(BuildContext context) {
    return GeneralScaffold(
      illustrationAssetName:
          'assets/images/kem_increasement/illustration_1.png',
      illustrationWidthInPercentage: 0.6,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          MainHeadingText(
            text: 'Upaya Peningkatan KEM',
          ),
          Space(size: sizes.paragraphNewLineMedium),
          ParagraphText(
            text:
                'Jika belum mencapai KEM yang sesuai dengan tingkatnya, pembaca perlu melakukan upaya peningkatan KEM sampai minimal mencapai KEM yang sesuai. Upaya tersebut bisa diupayakan sendiri oleh pembaca atau siswa dan atau bisa di usahakan oleh orang lain, misalnya guru. Dalam rangka meningkatkan KEM, Nurhadi memberi solusi tiga hal. Ketiga hal tersebut adalah (1) hal yang perlu di pelajari, (2) hal yang dapat mengembangkan kecepatan membaca dan (3) hal yang dapat menghambat kecepatan membaca. Hal yang perlu di pelajari berhubungan dengan ilmu-ilmu dalam kajian membaca yang terkait dengan membaca cepat. Hal yang dapat mengembangkan kecepatan membaca dan hal yang mempengaruhi hambatan membaca cepat.',
            shouldShowIndentation: true,
            spaceCount: 3,
          ),
          Space(size: sizes.paragraphNewLineSmall),
          ParagraphText(
            text:
                'Pembaca perlu mengetahui hal-hal yang terkait dengan membaca cepat. Hal tersebut adalah berikut ini.',
            shouldShowIndentation: true,
            spaceCount: 3,
          ),
          Space(size: sizes.paragraphNewLineSmall),
          ParagraphList(
            numberingType: NumberingType.lowerCaseAlphabetic,
            numberingSuffix: NumberingSuffix.dot,
            list: [
              'Pembaca perlu memahami hakikat membaca.',
              'Pembaca mengetahui cara mengukur tingkat.',
              'Pembaca dapat mengukur tingkat pemahaman terhadap isi bacaan.',
              'Pembaca mengetahui metode dan teknik pengembangan kecepatan membaca.',
              'Pembaca mengetahui faktor-faktor yang dapat menghambat kecepatan baca.',
              'Pembaca mengetahui berbagai macam variasi membaca sesuai dengan variasi tujuan membaca.',
              'Pembaca mampu memilih aspek tertentu saja yang dibutuhkan dalam membaca sesuai dengan tujuan membaca.',
              'Pembaca menganggap kegiatan membaca sebagai kebutuhan.',
              'Pembaca selalu membaca pada berbagai jenis bacaan dengan motivasi yang kuat.',
            ],
          ),
          Space(size: sizes.paragraphNewLineMedium),
          ParagraphText(
            text:
                'Agar KEM meningkat, pembaca perlu melakukan kegiatan membaca sesuai saran berikut ini.',
            shouldShowIndentation: true,
            spaceCount: 3,
          ),
          Space(size: sizes.paragraphNewLineSmall),
          ParagraphList(
            numberingType: NumberingType.lowerCaseAlphabetic,
            numberingSuffix: NumberingSuffix.dot,
            list: [
              'Membaca hendaknya membaca pada kelompok-kelompok kata.',
              'Pembaca hendaknya jangan mengulang-ulang kalimat yang telah dibaca (regresi).',
              'Pembaca hendaknya jangan selalu berhenti lama di awal baris atau kalimat.',
              'Pembaca hendaknya mencari kata-kata kunci yang menjadi tanda awal dari adanya gagasan utama sebuah kalimat.',
              'Pembaca hendaknya mengabaikan kata-kata tugas yang sifatnya berulang-ulang.',
              'Pembaca hendaknya menggerakkan mata dari atas ke bawah jika bacaannya dalam bentuk kolom-kolom.',
            ],
          ),
          Space(size: sizes.paragraphNewLineMedium),
          ParagraphText(
            text:
                'Pembaca yang ingin KEM-nya meningkat maka mereka perlu menyingkirkan hambatan dalam membaca cepat. Hambatan-hambatan dalam membaca cepat adalah berikut ini.',
            shouldShowIndentation: true,
            spaceCount: 3,
          ),
          Space(size: sizes.paragraphNewLineSmall),
          ParagraphList(
            numberingType: NumberingType.lowerCaseAlphabetic,
            numberingSuffix: NumberingSuffix.dot,
            list: [
              'Pembaca menyuarakan apa yang dibacanya.',
              'Pembaca membaca kata demi kata.',
              'Pembaca menggunakan alat tertentu (misalnya pensil) untuk membantu melihat atau menelusuri baris-baris bacaan.',
              'Pembaca menggerakan-gerakan kepala atau anggota tubuh yang lainnya.',
              'Konsentrasi berpikir pembaca terpecah dengan hal-hal lain di luar bacaan.',
              'Pembaca mengulang-ulang unit-unit bacaan yang telah dibacanya.',
            ],
          ),
          Space(size: sizes.paragraphNewLineLarge),
        ],
      ),
    );
  }
}
