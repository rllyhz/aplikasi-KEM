import 'package:aplikasi_kem/ui/widgets/paragraph_text.dart';
import 'package:aplikasi_kem/ui/widgets/scaffolds/general_scaffold.dart';
import 'package:aplikasi_kem/ui/widgets/space.dart';
import 'package:aplikasi_kem/ui/widgets/sub_heading_text.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_kem/utils/ui/color_utils.dart' as colors;
import 'package:aplikasi_kem/utils/values/sizes.dart' as sizes;

class KEMIncreasementSecondDetailThreeScreen extends StatelessWidget {
  const KEMIncreasementSecondDetailThreeScreen({super.key});

  static const String route = '/kem-increasement-second-detail-three';

  @override
  Widget build(BuildContext context) {
    return GeneralScaffold(
      appBarTitleTextColor: colors.darkTextColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SubHeadingText(
            text: 'Metode Pacer',
          ),
          Space(size: sizes.paragraphNewLineSmall),
          ParagraphText(
            text:
                'Metode PACER merupakan metode membaca yang terdiri atas lima tahap,yaitu preview, assess, choose, expedite, dan review. Metode ini mirip dengan metode P2R dan bisa saja dipandang sebagai pengembangan metode P2R. Preview atau meninjau merupakan kegiatan membaca bacaan secara sepintas lalu untuk mengenali hal-hal yang bersifat luaran. Sepintas dapat diartikan sebagai kegiatan pembaca melihat-lihat bacaan secara cepat sekali pada bagian-bagian tertentu yang bersifat pokok, misalnya judul dan sub-sub judul. Selanjutnya, Assess atau menaksir merupakan kegiatan membaca untuk menentukan tujuan membaca dan materi baca.',
            shouldShowIndentation: true,
            spaceCount: 3,
          ),
          Space(size: sizes.paragraphNewLineSmall),
          ParagraphText(
            text:
                'Choose atau memilih merupakan kegiatan membaca yang berkaitan dengan memilih dan melakukan membaca dengan teknik yang tepat. Teknik yang tepat akan sangat menentukan keberhasilan dalam membaca. Expedite atau mempercepat merupakan kegiatan pembaca untuk mempercepat kecepatan baca. Terakhir, Review atau meninjau kembali merupakan kegiatan pembaca untuk membaca kembali secara sepintas. Hal yang harus diperhatikan adalah cara membacanya harus secara sepintas lalu. Jika pelan atau lamban tidak dikatakan mereview, tetapi membaca ulang. Apabila terjadi pengulagnan proses membaca, pelaksanaan membaca dengan metode ini tidak berhasil. Pembaca yang belum dapat memahami bacaan dengan baik disarankan mengulang kegiatan membaca pada waktu yang berbeda sehingga rangkaian tahap dalam metode PACER bisa berjalan secara urut, walaupun hasilnya belum maksimal.',
            shouldShowIndentation: true,
            spaceCount: 3,
          ),
          Space(size: sizes.paragraphNewLineLarge),
        ],
      ),
    );
  }
}
