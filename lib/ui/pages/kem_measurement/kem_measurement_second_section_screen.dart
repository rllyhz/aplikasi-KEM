import 'package:aplikasi_kem/ui/widgets/highlight_text_box.dart';
import 'package:aplikasi_kem/ui/widgets/indentation_box.dart';
import 'package:aplikasi_kem/ui/widgets/paragraph_list.dart';
import 'package:aplikasi_kem/ui/widgets/paragraph_text.dart';
import 'package:aplikasi_kem/ui/widgets/scaffolds/general_scaffold.dart';
import 'package:aplikasi_kem/ui/widgets/space.dart';
import 'package:aplikasi_kem/ui/widgets/sub_heading_text.dart';
import 'package:aplikasi_kem/utils/ui/color_utils.dart' as colors;
import 'package:aplikasi_kem/utils/ui/text_numbering_helpers.dart';
import 'package:aplikasi_kem/utils/values/sizes.dart' as sizes;
import 'package:flutter/material.dart';

class KEMMeasurementSecondSectionScreen extends StatelessWidget {
  const KEMMeasurementSecondSectionScreen({super.key});

  static const String route = '/kem-measurement-second-section';

  @override
  Widget build(BuildContext context) {
    return GeneralScaffold(
      appBarTitleTextColor: colors.darkTextColor,
      illustrationAssetName: 'assets/images/kem_measurement/illustration_2.png',
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ParagraphText(
            text:
                'Setelah semua data sudah di temukan, pengukuran KEM dapat menggunakan beberapa alternatif rumus KEM, antara lain:',
            shouldShowIndentation: true,
            spaceCount: 3,
          ),
          const Space(size: sizes.paragraphNewLineSmall),
          HighlightTextBox(
            backgroundColor: colors.greyColor,
            child: Image.asset(
              'assets/images/kem_measurement/formula.png',
              fit: BoxFit.fitWidth,
            ),
          ),
          const Space(size: sizes.paragraphNewLineSmall),
          const ParagraphText(
            text: 'K       : jumlah kata yang di baca',
          ),
          const ParagraphText(
            text: 'Wm   : waktu tempuh baca dalam satuan menit',
          ),
          const ParagraphText(
            text: 'Wd    : waktu tempuh baca dalam satuan detik',
          ),
          const ParagraphText(
            text: 'B       : skor bobot tes',
          ),
          const ParagraphText(
            text: 'SI      : skor ideal',
          ),
          const ParagraphText(
            text: 'Kpm  : kata per menit',
          ),

          //
          const Space(size: sizes.paragraphNewLineMedium),
          const ParagraphText(
              text:
                  'Berdasarkan 3 rumus yang telah ada, rumus pertama merupakan rumus yang paling mudah dan paling sering di gunakan dalam perhitungan KEM. Untuk memudahkan proses pengukuran/penghitungan KEM, ikutilah prosedur kerja di bawah ini.'),
          const SubHeadingText(
            text:
                'Tandailah bacaan anda/pembaca, di mana anda/pembaca memulai bacaan dan di mana pula berakhirnya, kemudian hitunglah jumlah kata yang telah (berhasil) anda baca itu dengan cara:',
            isBold: false,
            isNumbering: true,
            numberingValue: 'a',
          ),
          const ParagraphList(
            padding: EdgeInsets.only(left: 24.0),
            numberingSuffix: NumberingSuffix.parentheses,
            list: [
              'Menghitung jumlah kata per baris (sebagai sampel).',
              'Menghitung jumlah baris per halaman, lalu dikalikan dengan hasil penghitungan butir.',
              'Menghasilkan jumlah kata per halaman.',
              'Menghitung jumlah halaman yang berhasil dibaca.',
              'Memperkalikan hasil penghitungan langkah ketiga, yakni jumlah kata per halaman dengan hasil penghitungan langkag keempat, yakni jumlah halaman, menghasilkan jumlah seluruh kata yang telah dibaca.',
            ],
          ),
          const Space(size: 4.0),
          const IndentationBox(
            size: 7.0,
            children: [
              ParagraphText(text: 'Contoh:'),
              ParagraphText(text: 'Jumlah kata per baris = 11'),
              ParagraphText(text: 'Jumlah baris per halaman = 35'),
              ParagraphText(
                  text: 'Jumlah halaman yang dibaca = 10 maka akan diperoleh:'),
              ParagraphText(text: 'Jumlah kata per halaman 11 X 35 = 385 kata'),
              ParagraphText(
                  text:
                      'Jumlah kata yang dibaca (secara keseluruhan) adalah 10 x 385 = 3850 kata.'),
            ],
          ),

          // b
          const Space(size: sizes.paragraphNewLineMedium),
          const SubHeadingText(
            text: 'Catatlah waktu tempuh baca, dengan cara:',
            isBold: false,
            isNumbering: true,
            numberingValue: 'b',
          ),
          const IndentationBox(
            size: 7.0,
            children: [
              ParagraphList(
                numberingSuffix: NumberingSuffix.parentheses,
                list: [
                  'Catat waktu mulai membaca, misalnya pk. 10.15',
                  'Catat waktu berakhirnya membaca, misalnya pk 10.20.30',
                  'Hitung waktu tempuh baca dengan jalan (b - a) atau 10.20.30 - 10.15 = 5 menit 30 detik atau 330 detik.',
                ],
              )
            ],
          ),

          // c
          const Space(size: sizes.paragraphNewLineMedium),
          const SubHeadingText(
            text:
                'Hitung rata-rata kecepatan bacanya dengan jalan membagi jumlah kata (langkah 1) dan waktu tempuh baca (langkah 2) jika waktu tempuh baca dalam bentuk menit gunakan rumus (1), jika menggunakan satuan detik gunakan (2) atau (3). Penghitungan untuk contoh di atas menjadi seperti berikut ini.',
            isBold: false,
            isNumbering: true,
            numberingValue: 'c',
          ),
          const IndentationBox(
            size: 6.2,
            children: [
              ParagraphText(
                text: '*) Menggunakan rumus (1)',
                fontStyle: FontStyle.italic,
              ),
              ParagraphText(
                text: '3850 : 5.5 = 700 kpm',
                fontStyle: FontStyle.italic,
              ),
            ],
          ),

          // d
          const Space(size: sizes.paragraphNewLineMedium),
          const SubHeadingText(
            text:
                'Tentukan persentase pemahaman isi bacaan yang anda capai dengan cara membagi sekor bobot perolehan yang benar dengan sekor idealnya, kemudian dikalikan dengan 100%. Contoh: diberikan 20 soal pemahaman isi bacaan, dengan nilai maksimal 100. Kemudian pembaca hanya dapat menjawab 15 soal dengan benar.',
            isBold: false,
            isNumbering: true,
            numberingValue: 'd',
          ),
          const IndentationBox(
            size: 6.2,
            children: [
              ParagraphText(
                text: 'Maka: 15 x 5 = 75',
                fontStyle: FontStyle.italic,
              ),
            ],
          ),

          // e
          const Space(size: sizes.paragraphNewLineMedium),
          const SubHeadingText(
            text:
                'Tentukan KEM-nya dengan jalan memperkalikan hasil langkah (c) (rata-rata kecepatan baca) dengan hasil langkah (d) (pemahaman isi bacaan).',
            isBold: false,
            isNumbering: true,
            numberingValue: 'e',
          ),
          const IndentationBox(
            size: 6.2,
            children: [
              ParagraphText(
                  text:
                      'Untuk contoh data di atas, penghitungan KEM-nya tampak seperti berikut ini.'),
              ParagraphText(
                text: '(a) dengan rumus (1):',
                fontStyle: FontStyle.italic,
              ),
              ParagraphText(
                text: '(3850 / 5.5) x (75 / 100) = 525 kpm',
                fontStyle: FontStyle.italic,
              ),
            ],
          ),
          const Space(size: sizes.paragraphNewLineLarge),
        ],
      ),
    );
  }
}
