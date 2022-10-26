import 'package:aplikasi_kem/ui/widgets/paragraph_text.dart';
import 'package:aplikasi_kem/ui/widgets/scaffolds/general_scaffold.dart';
import 'package:aplikasi_kem/ui/widgets/space.dart';
import 'package:aplikasi_kem/ui/widgets/sub_heading_text.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_kem/utils/ui/color_utils.dart' as colors;
import 'package:aplikasi_kem/utils/values/sizes.dart' as sizes;

class KEMIncreasementSecondDetailOneScreen extends StatelessWidget {
  const KEMIncreasementSecondDetailOneScreen({super.key});

  static const String route = '/kem-increasement-second-detail-one';

  @override
  Widget build(BuildContext context) {
    return GeneralScaffold(
      appBarTitleTextColor: colors.darkTextColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SubHeadingText(
            text: 'Metode P2R',
          ),
          Space(size: sizes.paragraphNewLineSmall),
          ParagraphText(
            text:
                'Metode P2R merupakan metode membaca yang terdiri atas tahap tiga tahap. Ketiga tahapan itu adalah preview, read, dan review yang biasanya digunakan sebagian besar pembaca cepat dan efisien. Ketiga tahapan itu dilakukan secara urut jika ketiga tahap dilakukan semuanya. Tahap pertama harus preview, tahap kedua harus read, dan yang terakhir harus review. Ketiga tahapan itu mërupakan sebuah jalinan yang berkesinambungan.',
            shouldShowIndentation: true,
            spaceCount: 3,
          ),
          Space(size: sizes.paragraphNewLineSmall),
          ParagraphText(
            text:
                'Preview adalah membaca sepintas untuk mengetahui struktur bacaan, pokok-pokok pikiran, relevansi, dan sebagainya. Tahap selanjutnya, Read adalah membaca secepat mungkin sesuai dengan tujuan yang ingin dicapai dan sesuai tingkat kesulitan bacaan. Langkah terakhir, Review adalah membaca sepintas lalu untuk memastikan tidak ada yang terlewatkan dan untuk memperkuat ingatan terhadap pokok-pokok pikiran yang telah didapat dari tahap read. Pada tahap ini, pembaca membaca bacaan seperlunya saja seperti pada preview.',
            shouldShowIndentation: true,
            spaceCount: 3,
          ),
          Space(size: sizes.paragraphNewLineLarge),
        ],
      ),
    );
  }
}
