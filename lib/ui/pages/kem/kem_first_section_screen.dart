import 'package:aplikasi_kem/ui/widgets/main_heading_text.dart';
import 'package:aplikasi_kem/ui/widgets/paragraph_text.dart';
import 'package:aplikasi_kem/ui/widgets/scaffolds/general_scaffold.dart';
import 'package:aplikasi_kem/ui/widgets/space.dart';
import 'package:aplikasi_kem/ui/widgets/sub_heading_text.dart';
import 'package:aplikasi_kem/utils/ui/color_utils.dart' as colors;
import 'package:aplikasi_kem/utils/values/sizes.dart' as sizes;
import 'package:flutter/material.dart';

class KEMFirstSectionScreen extends StatelessWidget {
  const KEMFirstSectionScreen({super.key});

  static const String route = '/kem-first-section';

  @override
  Widget build(BuildContext context) {
    return GeneralScaffold(
      appBarTitleTextColor: colors.whiteColor,
      illustrationAssetName: 'assets/images/kem/illustration_1.png',
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          MainHeadingText(
            text: 'Pengertian KEM (Kecepatan Efektif Membaca)',
          ),
          Space(
            size: sizes.paragraphNewLineMedium,
          ),
          ParagraphText(
            text:
                'Kecepatan membaca adalah kemampuan seseorang dalam menggerakkan mata secara cepat dan tepat pada saat membaca sehingga diperoleh rata-rata kecepatan baca berupa jumlah kata permenit. Jadi jika seseorang dapat membaca bacaan kurang lebih 2000 kata dalam tempo lima menit, artinya rata- rata kecepatan bacanya adalah 400 kata per menit.',
            shouldShowIndentation: true,
            spaceCount: 3,
          ),
          Space(
            size: sizes.paragraphNewLineSmall,
          ),
          ParagraphText(
            text:
                'Kecepatan Efektif Membaca (KEM) atau disebut juga dengan Kecepatan Efektif (KE) adalah perpaduan dari kemampuan motorik (gerakan mata) atau kemampuan visual dengan kemampuan kognitif seseorang dalam membaca. Dengan kata lain KEM merupakan perpaduan antara kecepatan membaca dengan pemahaman isi bacaan. KEM merupakan cermin dari kemampuan membaca yang sesungguhnya. Dua komponen utama yang terlibat dalam proses/kegiatan membaca sudah tercakup di dalamnya. Perpaduan dari kecepatan membaca dan pemahaman isi bacaan secara keseluruhan atau perpaduan dari kemampuan visual dan kemampuan kognisi dalam proses membaca disebut KEM.',
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
