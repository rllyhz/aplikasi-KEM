import 'package:aplikasi_kem/ui/widgets/main_heading_text.dart';
import 'package:aplikasi_kem/ui/widgets/paragraph_text.dart';
import 'package:aplikasi_kem/ui/widgets/scaffolds/general_scaffold.dart';
import 'package:aplikasi_kem/ui/widgets/space.dart';
import 'package:aplikasi_kem/ui/widgets/sub_heading_text.dart';
import 'package:aplikasi_kem/utils/ui/color_utils.dart' as colors;
import 'package:aplikasi_kem/utils/values/sizes.dart' as sizes;
import 'package:flutter/material.dart';

class KEMSecondSectionScreen extends StatelessWidget {
  const KEMSecondSectionScreen({super.key});

  static const String route = '/kem-second-section';

  @override
  Widget build(BuildContext context) {
    return GeneralScaffold(
      appBarTitleTextColor: colors.darkTextColor,
      illustrationAssetName: 'assets/images/kem/illustration_2.png',
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          MainHeadingText(
            text: 'Faktor-Faktor yang Mempengaruhi KEM',
          ),
          Space(
            size: sizes.paragraphNewLineLarge,
          ),
          SubHeadingText(
            text: 'Faktor Pembaca',
            isNumbering: true,
            numberingValue: 'a',
          ),
          Space(
            size: sizes.paragraphNewLineSmall,
          ),
          ParagraphText(
            text:
                'Kebanyakan para ahli memandang faktor yang paling dominan dalam mempengaruhi pemahaman bacaan bergantung pada faktor pembaca. Terdapat hal yang melatarbelakangi hal tersebut, yaitu latar belakang pengalaman, tujuan, sikap membaca dan pengetahuan. Motivasi dan minat yang tinggi serta sikap yang baik dalam membaca akan mempunyai dampak yang sangat positif pada KEM seorang pembaca. Faktor lainya yang berhubungan dengan faktor pembaca adalah kebiasaan pembaca. Kebiasaan pembaca ada dua macam, yaitu kebiasaan baik dan kebiasaan buruk. Kebiasaan baik perlu di pelihara dan di tingkatkan, sedangkan kebiasaan buruk perlu di tanggulangi dan diatasi.',
            shouldShowIndentation: true,
            spaceCount: 3,
          ),
          Space(
            size: sizes.paragraphNewLineLarge,
          ),
          SubHeadingText(
            text: 'Faktor Keterbacaan Teks Bacaan',
            isNumbering: true,
            numberingValue: 'b',
          ),
          Space(
            size: sizes.paragraphNewLineSmall,
          ),
          ParagraphText(
            text:
                'Faktor lain yang mempengaruhi KEM pembaca adalah keterbacaan teks bacaan. Keterbacaan teks bacaan mempunyai hubungan timbal balik dengan minat baca. Teks bacaan yang memiliki tingkat keterbacaan yang tinggi relatif mudah di baca; sebaliknya, teks bacaan yang memiliki tingkat keterbacaan rendah maka akan sulit di baca. Teks bacaan yang memiliki tingkat keterbacaan yang tinggi mempunyai dampak pembaca menyelepekan atau menganggap remeh arau mudah bacaan tersebut. Teks yang memiliki keterbacaan rendah akan memberi dampak pembaca enggan atau putus asa untuk membaca. Teks bacaan yang tingkat keterbacaan sesuai akan dapat mendorong minat baca pembaca.',
            shouldShowIndentation: true,
            spaceCount: 3,
          ),
          Space(
            size: sizes.paragraphNewLineLarge,
          ),
          SubHeadingText(
            text: 'Faktor Guru',
            isNumbering: true,
            numberingValue: 'c',
          ),
          Space(
            size: sizes.paragraphNewLineSmall,
          ),
          ParagraphText(
            text:
                'Dalam pembelajaran membaca, faktor lain yang tidak kalah pentingnya yang memperngaruhi KEM siswa adalah faktor guru. Guru merupakan faktor determinan penyebab rendahnya mutu pendidikan di suatu sekolah, tetapi guru juga menjadi faktor keberhasilan dalam pendidikan. Dalam pembelajaran membaca, guru mempunyai dua peran, yaitu memilih bacaan yang di gunakan siswa dan mengarahkan siswa untuk dapat membaca secara efektif dan efisien.',
            shouldShowIndentation: true,
            spaceCount: 3,
          ),
          Space(
            size: sizes.paragraphNewLineLarge,
          ),
        ],
      ),
    );
  }
}
