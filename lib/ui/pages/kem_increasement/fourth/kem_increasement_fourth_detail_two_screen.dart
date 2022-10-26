import 'package:aplikasi_kem/ui/widgets/main_heading_text.dart';
import 'package:aplikasi_kem/ui/widgets/paragraph_text.dart';
import 'package:aplikasi_kem/ui/widgets/scaffolds/general_scaffold.dart';
import 'package:aplikasi_kem/ui/widgets/space.dart';
import 'package:aplikasi_kem/ui/widgets/sub_heading_text.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_kem/utils/ui/color_utils.dart' as colors;
import 'package:aplikasi_kem/utils/values/sizes.dart' as sizes;

class KEMIncreasementFourthDetailTwoScreen extends StatelessWidget {
  const KEMIncreasementFourthDetailTwoScreen({super.key});

  static const String route = '/kem-increasement-fourth-detail-two';

  @override
  Widget build(BuildContext context) {
    return GeneralScaffold(
      appBarTitleTextColor: colors.darkTextColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          MainHeadingText(
            text: 'Metode Membaca Cepat',
          ),
          Space(size: sizes.paragraphNewLineLarge),

          // 1
          SubHeadingText(
            text: 'Metode P2R',
            isNumbering: true,
            numberingValue: '1',
          ),
          Space(size: sizes.paragraphNewLineSmall),
          ParagraphText(
            text:
                'Metode P2R merupakan metode membaca yang terdiri atas tahap tiga tahap. Ketiga tahapan itu adalah preview, read, dan review yang biasanya digunakan sebagian besar pembaca cepat dan efisien. Preview adalah membaca sepintas untuk mengetahui struktur bacaan, pokok-pokok pikiran. Read adalah membaca secepat mungkin sesuai dengan tujuan. Review adalah membaca sepintas lalu untuk memastikan tidak ada yang terlewatkan dan untuk memperkuat ingatan.',
            shouldShowIndentation: true,
            spaceCount: 3,
          ),

          // 2
          Space(size: sizes.paragraphNewLineMedium),
          SubHeadingText(
            text: 'Metode GPID',
            isNumbering: true,
            numberingValue: '2',
          ),
          Space(size: sizes.paragraphNewLineSmall),
          ParagraphText(
            text:
                'Metode GPID merupakan metode membaca yang terdiri atas empat tahap yaitu, goall, plans, implementation, dan development. Goall adalah apa yang diharapkan, dimaksud atau apa tujuan membaca. Plans adalah rencana untuk mencapai tujuan. Implementation adalah pelaksanaan membaca. Development adalah proses evaluasi dan proses mengambil simpulan.',
            shouldShowIndentation: true,
            spaceCount: 3,
          ),

          // 2
          Space(size: sizes.paragraphNewLineMedium),
          SubHeadingText(
            text: 'Metode Pacer',
            isNumbering: true,
            numberingValue: '3',
          ),
          Space(size: sizes.paragraphNewLineSmall),
          ParagraphText(
            text:
                'Metode PACER merupakan metode membaca yang terdiri atas lima tahap,yaitu preview, assess,choose, expedite,dan review. Preview atau meninjau merupakan kegiatan membaca bacaan secara sepintas. Assess atau menaksir merupakan kegiatan membaca untuk menentukan tujuan membaca dan materi baca.',
            shouldShowIndentation: true,
            spaceCount: 3,
          ),
          Space(size: sizes.paragraphNewLineSmall),
          ParagraphText(
            text:
                'Choose atau memilih merupakan kegiatan membaca yang berkaitan dengan memilih dan melakukan membaca dengan teknik yang tepat. Expedite atau mempercepat merupakan kegiatan pembaca untuk mempercepat kecepatan baca. Terakhir, Review atau meninjau kembali merupakan kegiatan pembaca untuk membaca kembali secara sepintas.',
            shouldShowIndentation: true,
            spaceCount: 3,
          ),

          // 4
          Space(size: sizes.paragraphNewLineMedium),
          SubHeadingText(
            text: 'Metode SQ3R',
            isNumbering: true,
            numberingValue: '4',
          ),
          Space(size: sizes.paragraphNewLineSmall),
          ParagraphText(
            text:
                'Metode SQ3R merupakan metode membaca yang ditujukan untuk kepentingan studi yang terdiri atas lima tahap, yaitu survai, question, reading, recite dan review (Tarigan 1990:54). Pertama, Survai adalah meninjau,meneliti, mengkaji, dan cara membaca bagian-bagian tertentu dari sebuah buku. Questioin (bertanya) merupakan tahap kedua dari metode SQ3R yang berupa kegiatan pembaca menyusun pertanyaan-pertanyaan. Reading (membaca) merupakan tahap ketiga dari metode SQ3R yang berupa kegiatan pembaca untuk membaca bacaan.',
            shouldShowIndentation: true,
            spaceCount: 3,
          ),
          Space(size: sizes.paragraphNewLineSmall),
          ParagraphText(
            text:
                'Recite (menceritakan kembali) merupakan tahap keempat dari metode SQ3R yang berupa kegiatan membaca untuk menceritakan kembali isi bacaan yang telah dibaca dengan kata-kata sendiri. Review (meninjau kembali) merupakan tahap akhir dari metode SQ3R yang berupa kegiatan pembaca untuk memeriksa ulang bagian-bagian yang telah dibaca dan dipahami.',
            shouldShowIndentation: true,
            spaceCount: 3,
          ),

          Space(size: sizes.paragraphNewLineLarge),
        ],
      ),
    );
  }
}
