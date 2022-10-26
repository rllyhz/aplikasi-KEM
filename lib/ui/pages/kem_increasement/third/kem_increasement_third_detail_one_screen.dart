import 'package:aplikasi_kem/ui/widgets/paragraph_text.dart';
import 'package:aplikasi_kem/ui/widgets/scaffolds/general_scaffold.dart';
import 'package:aplikasi_kem/ui/widgets/space.dart';
import 'package:aplikasi_kem/ui/widgets/sub_heading_text.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_kem/utils/ui/color_utils.dart' as colors;
import 'package:aplikasi_kem/utils/values/sizes.dart' as sizes;

class KEMIncreasementThirdDetailOneScreen extends StatelessWidget {
  const KEMIncreasementThirdDetailOneScreen({super.key});

  static const String route = '/kem-increasement-third-detail-one';

  @override
  Widget build(BuildContext context) {
    return GeneralScaffold(
      appBarTitleTextColor: colors.darkTextColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SubHeadingText(
            text: 'Teknik Skimming',
          ),
          Space(size: sizes.paragraphNewLineSmall),
          ParagraphText(
            text:
                'Skimming adalah terbang halaman demi halaman atau menjelajahi halaman demi halaman bacaan secara cepat. Berdasarkan pengertian tersebut skimming adalah teknik membaca dengan menjelajahi atau menyapu bacaan dengan cepat untuk memahami atau menemukan hal-hal yang penting. Seorang pembaca yang menggunakan teknik ini tidak lagi membaca kata demi kata, kalimat demi kalimat, dan paragraf demi paragraf, tetapi semua bagian bacaan yang ada pada sebuah halaman, ditatap secara cepat. Dalam menskim tidak hanya menjelajahi halaman demi halaman secara cepat, tetapi juga ada yang dicari. Hal yang dicari adalah hal-hal yang pokok atau penting, yaitu ide-ide pokok. Untuk itu, skimming merupakan teknik membaca yang dilaksanakan secara sistematis untuk mendapatkan hasil yang efisien.',
            shouldShowIndentation: true,
            spaceCount: 3,
          ),
          Space(size: sizes.paragraphNewLineSmall),
          ParagraphText(
            text:
                'Jenis teknik membaca yang termasuk dalam teknik skimming adalah skipping, sampling, locating, dan previewing. Skipping diartikan sebagai teknik baca lompat, yaitu membaca dengan loncatan-loncatan. Maksudnya adalah membaca melompat-lompat dari bagian yang penting, pokok, yang dicari atau dibutuhkan ke begian yang penting berikutnya. Bagian bacaan yang tidak penting dilompati atau tidak dihiraukan. Skipping digunakan pembaca untuk menangkap atau memahami ide-ide pokok atau informasi yang penting saja. Pembaca yang menggunakan teknik ini berarti melakukan ayunan mata dari bagian bacaan yang penting ke bagian bacaan yang lain.',
            shouldShowIndentation: true,
            spaceCount: 3,
          ),
          Space(size: sizes.paragraphNewLineSmall),
          ParagraphText(
            text:
                'Sampling merupakan teknik membaca bagian tertentu bacaan dengan ccpat supaya mendapat gambaran umum dari bacaan yang dibaca. Prinsip yang dianut teknik ini adalah membaca bagian-bagian tertentu dari sebuah bacaan yang dianggap dapat mewakili keseluruhan bacaan. Bagian-bagian bacaan yang dianggap dapat mewakili bacaan, yaitu kalimat inti atau kalimat utama. Kalimat utama umumnya mengandung informasi kunci yang biasanya terletak pada kalimat pertama dari sebuah paragraf. Untuk itu, penggunaan teknik ini dipusatkan pada membaca kalimat pertama setiap paragraf. Dengan teknik ini, pembaca akan mendapatkan gambaran umum sebuah bacaan dengan cepat.',
            shouldShowIndentation: true,
            spaceCount: 3,
          ),
          Space(size: sizes.paragraphNewLineSmall),
          ParagraphText(
            text:
                'Locating merupakan teknik membaca vertikal. Maksudnya adalah mata pembaca bergerak secara vertikal, yaitu pandangan mata bergerak dari bagian atas ke bawah secara cepat. Pembaca memusatkan pandangan matanya di bagian tengah bacaan dan bagian kanan dan kiri tetap dalam jangkauan pandangan mata. Hal ini terjadi karena pembaca selain mempunyai kemampuan pandang fokus dekat yang disebut rentang pandang mata (eye span), juga mempunyai kemampuan pandang sekeliling atau daya melihat sekeliling (peripheral vision). Dengan kedua kemampuan itu, pembaca dapat menggerakkan matanya dari bagian tengah atas ke bagian tengah bawah secara cepat.',
            shouldShowIndentation: true,
            spaceCount: 3,
          ),
          Space(size: sizes.paragraphNewLineSmall),
          ParagraphText(
            text:
                'Previewing merupakan gabungan dari teknik sampling dan locating. Teknik ini menggunakan teknik sampling dari sisi pemusatan perhatian pada kalimat pertama setiap paragraf dan memanfaatkan teknik locating dari sisi daya melihat sekeliling. Penggabungan kedua teknik tersebut digunakan untuk menerima atau mengenali pokok-pokok pikiran yang penting dengan cepat. Teknik ini juga dapat digunakan untuk menangkap garis besar materi bacaan sebelum pembaca menolak untuk membacanya. Kalau hal tersebut dilakukan dapat menghemat waktu yang banyak.',
            shouldShowIndentation: true,
            spaceCount: 3,
          ),
          Space(size: sizes.paragraphNewLineLarge),
        ],
      ),
    );
  }
}
