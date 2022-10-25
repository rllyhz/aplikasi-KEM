import 'package:aplikasi_kem/ui/pages/exercises/exercise_first_section_screen.dart';
import 'package:aplikasi_kem/ui/widgets/custom_button.dart';
import 'package:aplikasi_kem/ui/widgets/main_heading_text.dart';
import 'package:aplikasi_kem/ui/widgets/paragraph_list.dart';
import 'package:aplikasi_kem/ui/widgets/scaffolds/general_scaffold.dart';
import 'package:aplikasi_kem/ui/widgets/space.dart';
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
              'Catatlah jumlah kata pada bacaan tersebut di buku tulis.',
              'Tekan tombol "Mulai" sebelum mulai membaca teks bacaan.',
              'Jika sudah selesai membaca tekan tombol "Selesai".',
              'Catatlah hasil waktu membaca di buku tulis.',
              'Tekan tombol "Soal" untuk melanjutkan ke tahap pengerjaan tes pemahaman isi.',
              'Kerjakan tes pemahaman isi dengan jujur dan sesuai dengan kemampuan.',
              'Setelah selesai mengerjakan tekan tombol "Selesai".',
              'Catatlah hasil tes pemahaman isi di buku tulis.',
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
