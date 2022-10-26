import 'package:aplikasi_kem/ui/widgets/texts/paragraph_text.dart';
import 'package:aplikasi_kem/ui/widgets/scaffolds/general_scaffold.dart';
import 'package:aplikasi_kem/ui/widgets/utils/space.dart';
import 'package:aplikasi_kem/ui/widgets/texts/sub_heading_text.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_kem/utils/ui/color_utils.dart' as colors;
import 'package:aplikasi_kem/utils/values/sizes.dart' as sizes;

class KEMIncreasementSecondDetailFourScreen extends StatelessWidget {
  const KEMIncreasementSecondDetailFourScreen({super.key});

  static const String route = '/kem-increasement-second-detail-four';

  @override
  Widget build(BuildContext context) {
    return GeneralScaffold(
      appBarTitleTextColor: colors.darkTextColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SubHeadingText(
            text: 'Metode SQ3R',
          ),
          Space(size: sizes.paragraphNewLineSmall),
          ParagraphText(
            text:
                'Metode SQ3R merupakan metode membaca yang ditujukan untuk kepentingan studi yang terdiri atas lima tahap, yaitu survai, question, reading, recite dan review (Tarigan 1990:54). Pertama, Survai adalah meninjau,meneliti, mengkaji, dan cara membaca bagian-bagian tertentu dari sebuah buku. Bagian-bagian buku yang disurvai adalah bagian awal, bagian isi, dan bagian akhir secara cepat. Kedua, Questioin (bertanya) merupakan tahap kedua dari metode SQ3R yang berupa kegiatan pembaca menyusun pertanyaan-pertanyaan. Pertanyaan dibuat berdasarkan perkiraan-perkiraan pembaca sewaktu melakukan survai. Umumnya,pertanyaan-pertanyaan menanyakan mengenai hal-hal yang berkaitan dengan judul dan subjudul.',
            shouldShowIndentation: true,
            spaceCount: 3,
          ),
          Space(size: sizes.paragraphNewLineSmall),
          ParagraphText(
            text:
                'Reading (membaca) merupakan tahap ketiga dari metode SQ3R yang berupa kegiatan pembaca untuk membaca bacaan. Pada tahap ini, pembaca melakukan kegiatan membaca secara menyeluruh, yaitu membaca bab demi bab dan bagian demi bagian bab. Pembaca biasanya membaca dengan teliti sambil mencari jawaban dari pertanyaan pada tahap question. Recite (menceritakan kembali) merupakan tahap keempat dari metode SQ3R yang berupa kegiatan membaca untuk menceritakan kembali isi bacaan yang telah dibaca dengan kata-kata sendiri.',
            shouldShowIndentation: true,
            spaceCount: 3,
          ),
          Space(size: sizes.paragraphNewLineSmall),
          ParagraphText(
            text:
                'Review (meninjau kembali) merupakan tahap akhir dari metode SQ3R yang berupa kegiatan pembaca untuk memeriksa ulang bagian-bagian yang telah dibaca dan dipahami. Meninjau ulang merupakan kegiatan untuk melihat-lihat bagian-bagian bacaan secara secepat kilat. Tahap ini berguna dalam membantu pembaca mengingat-ingat dan mengeluarkannya pada waktu ujian. Disamping itu, review bermanfaat untuk mengecek barangkali ada hal-hal yang penting terlewati.',
            shouldShowIndentation: true,
            spaceCount: 3,
          ),
          Space(size: sizes.paragraphNewLineLarge),
        ],
      ),
    );
  }
}
