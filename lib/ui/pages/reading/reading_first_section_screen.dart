import 'package:aplikasi_kem/ui/widgets/banner_scaffold.dart';
import 'package:aplikasi_kem/ui/widgets/paragraph_text.dart';
import 'package:aplikasi_kem/ui/widgets/space.dart';
import 'package:aplikasi_kem/ui/widgets/sub_heading_text.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_kem/utils/ui/color_utils.dart' as colors;
import 'package:aplikasi_kem/utils/values/sizes.dart' as sizes;

class ReadingFirstSectionScreen extends StatelessWidget {
  const ReadingFirstSectionScreen({super.key});

  static const String route = '/reading-first-section';

  @override
  Widget build(BuildContext context) {
    return BannerScaffold(
      appBarTitleTextColor: colors.darkTextColor,
      bannerAssetName: 'assets/images/reading/banner_1.png',
      illustrationDescription:
          'Pak Langgeng selaku guru Bahasa Indonesia kelas X akan mengadakan ujian harian setelah selesai istirahat. Ahmad sebagai siswa yang rajin menggunakan waktu istirahatnya untuk membaca materi yang akan diujikan. \nHasilnya, Ahmad mendapatnya nilai sempurna pada ujian harian tersebut.',
      headingText:
          'Berdasarkan ilustrasi tersebut, apa yang dimaksud dengan membaca?',
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          ParagraphText(
            text:
                'Menurut Kamus Besar Bahasa Indonesia (KBBI) membaca adalah melihat serta memahami isi dari apa yang tertulis (dengan melisankan atau hanya dalam hati). Menurut Harimurti Kridalaksana (2008) membaca adalah menggali informasi dari teks, baik dari yang berupa tulisan maupun dari gambar atau diagram, maupun kombinasi itu semua. Membaca adalah keterampilan mengenal dan memahami bahasa tulisan dalam bentuk urutan lambing-lambang grafis dan perubahanya menjadi wacara bermakna dalam bentuk pemahaman diam-diam atau pengujaran keras-keras (Kridalaksana, 2008).',
          ),
          Space(
            size: sizes.paragraphNewLineMedium,
          ),
          ParagraphText(
            text:
                'Membaca secara umum dapat di artikan sebagai sebagai proses pengenalan dan penyandian kembali dan pemahaman simbol tertulis kemudian memberikan reaksi kritis terhadap bacaan dan mampu berpikir secara kreatif berdasarkan hasil bacaan yang kepentingan sehari-hari.',
          ),

          Space(
            size: sizes.paragraphNewLineLarge,
          ),

          // a
          SubHeadingText(
            text: 'Klasifikasi Pengertian Membaca',
            isNumbering: true,
            numberingValue: 'a',
          ),
          Space(
            size: sizes.paragraphNewLineSmall,
          ),
          ParagraphText(
            text:
                'Batasan membaca yang belum kompleks merupakan batasan membaca yang hanya mencangkup membaca sebagai proses pengenalan dan penyandian kembali simbol-simbol tertulis (teks atau bacaan). Batasan ini merupakan batasan membaca yang paling sempit ruang lingkupnya. Pembaca baru melakukan proses mengidentifikasi simbol-simbol dan mewujudkannya dalam bentuk ujaran. Proses yang lainnya, misalnya memahami simbol-simbol tulis yang di terimanya, belum di lakukanya.',
            shouldShowIndentation: true,
            spaceCount: 3,
          ),

          Space(
            size: sizes.paragraphNewLineLarge,
          ),

          // c
          SubHeadingText(
            text: 'Pengertian Membaca yang Cukup Kompleks',
            isNumbering: true,
            numberingValue: 'b',
          ),
          Space(
            size: sizes.paragraphNewLineSmall,
          ),
          ParagraphText(
            text:
                'Batas membaca yang cukup kompleks merupakan batasan membaca yang cakupan nya lebih kompleks dari batasan yang belum kompleks. Batasan ini memandang bahwa membaca sebagai proses pengenalan dan kembali serta pemahaman simbol-simbol tertulis. Maka dapat di simpulkan pengertian membaca yang cukup kompleks adalah membaca merupakan proses pengenalan dan menangkap bahan bacaan yang tertera secara tersurat atau eksplisit.',
            shouldShowIndentation: true,
            spaceCount: 3,
          ),

          Space(
            size: sizes.paragraphNewLineLarge,
          ),

          // c
          SubHeadingText(
            text: 'Pengertian Membaca yang Kompleks',
            isNumbering: true,
            numberingValue: 'c',
          ),
          Space(
            size: sizes.paragraphNewLineSmall,
          ),
          ParagraphText(
            text:
                'Batasan membaca yang kompleks merupakan batasan yang cakupan nya lebih kompleks dari cukup kompleks. Cakupan batasan membaca kompleks ialah membaca sebagai proses pengenalan dan penyandian kembali; pemahaman simbol tertulis; dan memberikan reaksi kritis terhadap bacaan dalam menentukan signifikasi, nilai, fungsi yang di paparkan penulis. Pembaca melakukan proses penggabungan keterampilan membaca permulaan, membaca pemahaman, dan mengkritisi bacaan yang di bacanya. Proses tersebut perlu di lakukan secara urut dan tidak bisa di balik.',
            shouldShowIndentation: true,
            spaceCount: 3,
          ),

          Space(
            size: sizes.paragraphNewLineLarge,
          ),

          // d
          SubHeadingText(
            text: 'Pengertian Membaca yang Sangat Kompleks',
            isNumbering: true,
            numberingValue: 'd',
          ),
          Space(
            size: sizes.paragraphNewLineSmall,
          ),
          ParagraphText(
            text:
                'Batasan membaca yang sangat kompleks merupakan batasan yang cakupanya paling kompleks dan luas. Batasan yang di maksud mencangkup membaca sebagai proses pengenalan dan penyandian kembali; pemahaman simbol tertulis; memberikan reaksi kritis terhadap bacaan; dan mampu berpikir secara kreatif berdasarkan hasil bacaan yang kepentingan sehari-hari. Pembaca menghubungkan isi bacaan dengan suatu masalah kehidupan yang lebih luas untuk menyelesaikan masalah yang di hadapi. Ide-ide yang ada pada bacaan di manfaatkan pembaca untuk kepentingannya.',
            shouldShowIndentation: true,
            spaceCount: 3,
          ),

          Space(
            size: sizes.detailScreenVerticalPaddingSmall,
          ),
        ],
      ),
    );
  }
}
