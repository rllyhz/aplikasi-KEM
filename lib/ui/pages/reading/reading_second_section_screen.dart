import 'package:aplikasi_kem/ui/widgets/scaffolds/banner_scaffold.dart';
import 'package:aplikasi_kem/ui/widgets/texts/paragraph_list.dart';
import 'package:aplikasi_kem/ui/widgets/texts/paragraph_text.dart';
import 'package:aplikasi_kem/ui/widgets/utils/space.dart';
import 'package:aplikasi_kem/ui/widgets/texts/sub_heading_text.dart';
import 'package:aplikasi_kem/utils/ui/text_numbering_helpers.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_kem/utils/ui/color_utils.dart' as colors;
import 'package:aplikasi_kem/utils/values/sizes.dart' as sizes;

class ReadingSecondSectionScreen extends StatelessWidget {
  const ReadingSecondSectionScreen({super.key});

  static const String route = '/reading-second-section';

  @override
  Widget build(BuildContext context) {
    return BannerScaffold(
      appBarTitleTextColor: colors.darkTextColor,
      bannerAssetName: 'assets/images/reading/banner_2.png',
      illustrationDescription:
          'Budi pergi ke perpustakaan untuk membaca buku tentang peristiwa sejarah dengan tujuan mengumpulkan informasi untuk tugas sejarah yang di berikan oleh Bu Dewi.',
      headingText: 'Berdasarkan ilustrasi tersebut, apa saja tujuan membaca?',
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          ParagraphText(
            text:
                'Tujuan membaca merupakan sesuatu yang ingin di capai atau di dapat oleh pembaca dari proses membaca yang di lakukanya. Tujuan membaca dicanangkan oleh pembaca sebelum mambaca. Namun pada saat membaca, membaca bisa saja mengurangi atau menambahi tujuan membacanya. Tujuan membaca merupakan salah satu faktor yang menentukan keberhasilan membaca. Tujuan membaca merupakan modal dalam membaca. Hubungan antara tujuan membaca dengan kemampuan membaca sangat signifikan. Inilah yang mendorong para ahli menyepakati bahwa tujuan membaca merupakan modal utama membaca.',
            shouldShowIndentation: true,
            spaceCount: 3,
          ),

          Space(
            size: sizes.paragraphNewLineLarge,
          ),

          // a
          SubHeadingText(
            text: 'Tujuan Umum',
            isNumbering: true,
            numberingValue: 'a',
          ),
          Space(
            size: sizes.paragraphNewLineSmall,
          ),
          ParagraphText(
            text:
                'Tujuan umum atau utama adalah tujuan yang umumnya atau sering kali atau selalu dicanangkan oleh pembaca sewaktu membaca. seringnya tujuan yang diinginkan oleh pembaca bisa di lihat status dan kegemaranya. Misalnya, pembaca berstatus sebagai pelajar maka seringnya ia membaca untuk menerima informasi atau bacaan yang di bacanya. Seorang yang gemar membaca karya sastra biasanya ia mempunyai tujuan membaca untuk mencari kesenangan.',
            shouldShowIndentation: true,
            spaceCount: 3,
          ),
          Space(
            size: sizes.paragraphNewLineSmall,
          ),
          ParagraphText(
            text:
                'Tujuan umum membaca menurut Tampobolon ada tiga jenis, yaitu untuk studi, untuk usaha, dan untuk kesenangan. Membaca untuk studi ialah membaca untuk menemukan informasi yang di perlukan dalam menyelesaiikan masalah-masalah studi dan memperkaya pengetahuan dalam bidang ilmu atau disiplin yang di tekuninya. Membaca untuk usaha ialah membaca untuk menemukan dan memahami barbagai informasi yang terkait dengan usaha yang di laksanakanya, seperti pekerja kantor, kegiatan perusahaan dan lainnya. Membaca untuk kesenangan ialah membaca untuk mengisi waktu luang atau senggang dan memuaskan perasaan dan imajinasi, misalnya membaca novel atau cerpen.',
            shouldShowIndentation: true,
            spaceCount: 3,
          ),

          Space(
            size: sizes.paragraphNewLineLarge,
          ),

          // c
          SubHeadingText(
            text: 'Tujuan Khusus',
            isNumbering: true,
            numberingValue: 'b',
          ),
          Space(
            size: sizes.paragraphNewLineSmall,
          ),
          ParagraphText(
            text:
                'Tujuan khusus adalah tujuan yang dicanangkan pemabaca pada saat tertentu sesuai situasi dan kondisi. Misalnya, seorang yang sedang menunggu teman dekatnya melakukan kegiatan membaca. Ia membaca untuk mengisi waktu luang. Tujuan membaca yang semacam itu merupakan tujuan khusus membaca. Seperti hal nya tujuan umum, tujuan khusus juga cenderung berbeda-beda.',
            shouldShowIndentation: true,
            spaceCount: 3,
          ),
          Space(
            size: sizes.paragraphNewLineSmall,
          ),
          ParagraphText(
            text:
                'Menurut Nurhadi, ada lima variasi tujuan membaca. Kelima variasi itu merupakan tujuan membaca secara khusus. Kelima tujuan tersebut adalah:',
            shouldShowIndentation: true,
            spaceCount: 3,
          ),
          Space(
            size: sizes.paragraphNewLineSmall,
          ),
          ParagraphList(
            numberingSuffix: NumberingSuffix.parentheses,
            list: [
              'Membaca untuk tujuan studi atau telaah ilmiah.',
              'Membaca untuk menangkap garis besar bacaan.',
              'Membaca untuk menikmati karya sastra.',
              'Membaca untuk mengisi waktu luang.',
              'Membaca untuk mencari keterangan tentang suatu yang ilmiah.',
            ],
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
            size: sizes.detailScreenVerticalPaddingMedium,
          ),
        ],
      ),
    );
  }
}
