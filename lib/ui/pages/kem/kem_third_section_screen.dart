import 'package:aplikasi_kem/ui/widgets/highlight_text_box.dart';
import 'package:aplikasi_kem/ui/widgets/main_heading_text.dart';
import 'package:aplikasi_kem/ui/widgets/paragraph_list.dart';
import 'package:aplikasi_kem/ui/widgets/paragraph_text.dart';
import 'package:aplikasi_kem/ui/widgets/scaffolds/general_scaffold.dart';
import 'package:aplikasi_kem/ui/widgets/space.dart';
import 'package:aplikasi_kem/ui/widgets/sub_heading_text.dart';
import 'package:aplikasi_kem/utils/ui/color_utils.dart' as colors;
import 'package:aplikasi_kem/utils/ui/text_numbering_helpers.dart';
import 'package:aplikasi_kem/utils/values/sizes.dart' as sizes;
import 'package:flutter/material.dart';

class KEMThirdSectionScreen extends StatelessWidget {
  const KEMThirdSectionScreen({super.key});

  static const String route = '/kem-third-section';

  @override
  Widget build(BuildContext context) {
    return GeneralScaffold(
      appBarTitleTextColor: colors.darkTextColor,
      illustrationAssetName: 'assets/images/kem/illustration_3.png',
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          MainHeadingText(
            text: 'Ringkasan',
          ),
          Space(
            size: sizes.paragraphNewLineLarge,
          ),
          Space(
            size: sizes.paragraphNewLineLarge,
          ),
          SubHeadingText(
            text: 'Pengertian KEM (Kecepatan Efektif Membaca)',
            isNumbering: true,
            numberingValue: 'a',
            numberingSuffix: NumberingSuffix.parentheses,
          ),
          Space(
            size: sizes.paragraphNewLineSmall,
          ),
          ParagraphText(
            text:
                'Kecepatan Efektif Membaca (KEM) atau disebut juga dengan Kecepatan Efektif (KE) adalah perpaduan dari kemampuan motorik (gerakan mata) atau kemampuan visual dengan kemampuan kognitif seseorang dalam membaca. Dengan kata lain KEM merupakan perpaduan antara kecepatan membaca dengan pemahaman isi bacaan.',
            shouldShowIndentation: true,
            spaceCount: 3,
          ),
          Space(
            size: sizes.paragraphNewLineMedium,
          ),
          SubHeadingText(
            text: 'Faktor-Faktor yang Mempengaruhi KEM',
            isNumbering: true,
            numberingValue: 'b',
            numberingSuffix: NumberingSuffix.parentheses,
          ),
          Space(
            size: sizes.paragraphNewLineSmall,
          ),
          ParagraphText(
            text:
                'Terdapat 3 faktor utama yang dapat mempengaruhi KEM pembaca, antara lain:',
            shouldShowIndentation: true,
            spaceCount: 3,
          ),
          Space(
            size: sizes.paragraphNewLineSmall,
          ),
          HighlightTextBox(
            backgroundColor: colors.greyColor,
            child: ParagraphList(
              numberingType: NumberingType.numeric,
              numberingSuffix: NumberingSuffix.parentheses,
              list: [
                'Faktor Pembaca',
                'Faktor Keterbacaan Teks Bacaan',
                'Faktor Guru',
              ],
            ),
          ),
          Space(
            size: sizes.paragraphNewLineLarge,
          ),
        ],
      ),
    );
  }
}
