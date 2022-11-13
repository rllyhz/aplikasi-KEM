import 'package:aplikasi_kem/ui/pages/exercises/exercise_first_section_screen.dart';
import 'package:aplikasi_kem/ui/widgets/buttons/custom_button.dart';
import 'package:aplikasi_kem/ui/widgets/texts/main_heading_text.dart';
import 'package:aplikasi_kem/ui/widgets/texts/paragraph_list.dart';
import 'package:aplikasi_kem/ui/widgets/scaffolds/general_scaffold.dart';
import 'package:aplikasi_kem/ui/widgets/utils/space.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_kem/utils/ui/color_utils.dart' as colors;
import 'package:aplikasi_kem/utils/values/sizes.dart' as sizes;
import 'package:aplikasi_kem/utils/routes.dart' as routes;

class ExerciseScreen extends StatelessWidget {
  const ExerciseScreen({super.key});

  static const String route = '/exercise';

  @override
  Widget build(BuildContext context) {
    return GeneralScaffold(
      appBarTitleText: 'Latihan',
      appBarTitleTextColor: colors.darkTextColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(
            child: MainHeadingText(
              text: 'Langkah-Langkah Mengerjakan Soal',
              textAlign: TextAlign.center,
            ),
          ),
          const Space(size: sizes.paragraphNewLineLarge),
          const ParagraphList(
            list: [
              'Pilih teks bacaan yang kalian ingin kerjakan.',
              'Tekan tombol teks bacaan tersebut.',
              'Perhatikan jumlah kata pada teks bacaan yang anda baca.',
              'Tekan tombol "Mulai" sebelum mulai membaca teks bacaan.',
              'Jika sudah selesai membaca tekan tombol "Selesai".',
              'Setelah menekan tombol “Selesai” waktu akan berhenti dan waktu tersebut merupakan hasil waktu membaca anda.',
              'Tekan tombol "Soal" untuk melanjutkan ke tahap pengerjaan tes pemahaman isi.',
              'Kerjakan tes pemahaman isi dengan jujur dan sesuai dengan kemampuan.',
              'Setelah selesai mengerjakan tekan tombol “Kirim”.',
              'Setelah menekan tombol “Kirim” maka tekan tombol “Lihat Skor” untuk mengetahui nilai tes pemahaman isi anda.',
              'Hitunglah hasil KEM di menu "Hasil".',
            ],
          ),

          const Space(size: 78.0),
          //
          Center(
            child: CustomButton(
              backgroundColor: colors.blueColor,
              textColor: colors.whiteColor,
              text: 'Mulai',
              onPressed: () {
                routes.navigateTo(context, ExerciseFirstSectionScreen.route);
              },
            ),
          ),

          const Space(size: 128.0),
        ],
      ),
    );
  }
}
