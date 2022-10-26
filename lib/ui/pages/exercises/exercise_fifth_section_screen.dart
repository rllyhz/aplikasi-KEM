import 'package:aplikasi_kem/ui/widgets/main_heading_text.dart';
import 'package:aplikasi_kem/ui/widgets/paragraph_text.dart';
import 'package:aplikasi_kem/ui/widgets/scaffolds/exercise_scaffold.dart';
import 'package:aplikasi_kem/ui/widgets/space.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_kem/utils/values/sizes.dart' as sizes;

class ExerciseFifthSectionScreen extends StatelessWidget {
  const ExerciseFifthSectionScreen({super.key});

  static const String route = '/exercise-fifth-section';

  @override
  Widget build(BuildContext context) {
    return ExerciseScaffold(
      onActionButtonPressed: () {},
      exerciseContents: [
        // Title
        const Center(
          child: MainHeadingText(
            text: 'Latihan Pentas Musik',
            textAlign: TextAlign.center,
          ),
        ),
        const Space(size: sizes.paragraphNewLineLarge),

        // Content
        _buildParagraph(
          'Pak Joko: “Selamat siang, Pak Ade.”',
          showIndentation: false,
        ),
        const Space(size: sizes.paragraphNewLineSmall),
        _buildParagraph(
          'Pak Ade: “Oh, Pak Joko rupanya. Selamat siang juga Pak.”',
          showIndentation: false,
        ),
        const Space(size: sizes.paragraphNewLineSmall),
        _buildParagraph(
          'Pak Joko: “Saya amati putra Pak Ade dan teman-temannya sering latihan musik di rumah ya?',
          showIndentation: false,
        ),
        const Space(size: sizes.paragraphNewLineSmall),
        _buildParagraph(
          'Pak Joko: “Oh, ya. Sebelumnya saya minta maaf nih, Pak Ade. Sebagai tetangga, saya harus menyampaikan hal ini karena sudah beberapa hari saya dan keluarga merasa terganggu. Jujur saja, suara yang ditimbulkan oleh latihan musik putra Pak Ade dan teman-temannya terlalu berisik. Saya dan keluarga jadi sulit istirahat. Apalagi istri saya sekarang kan sedang punya anak bayi.”',
          showIndentation: false,
        ),
        const Space(size: sizes.paragraphNewLineSmall),
        _buildParagraph(
          'Pak Ade: “Wah, begitu ya. Maaf saya tidak tahu jika suaranya terdengar sampai rumah Pak Joko. Tapi mau bagaimana lagi ya. Kalau tidak latihan, kasihan juga sama anak saya.”',
          showIndentation: false,
        ),
        const Space(size: sizes.paragraphNewLineSmall),
        _buildParagraph(
          'Pak Joko: “Iya, tapi apa tidak bisa diatur agar suaranya tidak terlalu keras dan hanya dibunyikan pada waktu tertentu saja?”',
          showIndentation: false,
        ),
        const Space(size: sizes.paragraphNewLineSmall),
        _buildParagraph(
          'Pak Ade: “Mohon pengertiannya, Pak. Ini hanya sementara. Mungkin hanya sampai minggu depan. Saya juga tidak ingin mengecewakan anak saya yang akan tampil pentas musik minggu depan.”',
          showIndentation: false,
        ),
        const Space(size: sizes.paragraphNewLineSmall),
        _buildParagraph(
          'Pak Joko: “Kalau memang Pak Ade bersikeras, terpaksa saya harus menyampaikan hal ini pada Pak RT. Nah, itu Pak RT kebetulan lewat. Saya akan membawanya ke sini.” (Pak Joko menghampiri Pak RT dan menyampaikan keluhannya. Pak RT pun mendatangi Pak Ade)',
          showIndentation: false,
        ),
        const Space(size: sizes.paragraphNewLineSmall),
        _buildParagraph(
          'Pak RT: “Selamat siang, Pak Ade.”',
          showIndentation: false,
        ),
        const Space(size: sizes.paragraphNewLineSmall),
        _buildParagraph(
          'Pak Ade: “Selamat siang juga Pak.”',
          showIndentation: false,
        ),
        const Space(size: sizes.paragraphNewLineSmall),
        _buildParagraph(
          'Pak RT: “Saya mendengar keluhan Pak Joko tentang putra Pak Ade dan teman-temannya yang bermain musik dan mengganggu waktu istirahat tetangga sekitar. Apakah kita bisa mencari solusi terbaik atas masalah ini, Pak?”',
          showIndentation: false,
        ),
        const Space(size: sizes.paragraphNewLineSmall),
        _buildParagraph(
          'Pak Joko: “Tidak bisa, Pak Ade. Saya sudah cukup bersabar selama bebe rapa hari terganggu. Suara putra Pak Ade dan teman-temannya yang bermain musik terlalu bising sehingga saya sulit untuk tidur siang. Selain itu, kebetulan juga saya kan lagi punya anak bayi sekarang. Kasihan juga bayi saya sering menangis karena ada musik yang keras.”',
          showIndentation: false,
        ),
        const Space(size: sizes.paragraphNewLineSmall),
        _buildParagraph(
          'Pak RT: “Mohon bersabar Bapak-Bapak. Jangan emosi dulu ya. Begini saja, kebetulan RT kita memiliki fasilitas ruang musik tidak jauh dari sini yang mungkin bisa digunakan untuk latihan putra Pak Ade dan teman-temannya. Tempatnya cukup layak dan memiliki peredam suara. Dengan demikian, putra Pak Ade dan teman-temannya masih bisa latihan musik dan Pak Joko beserta keluarga tidak lagi terganggu. Bagaimana Bapak-Bapak?”',
          showIndentation: false,
        ),
        const Space(size: sizes.paragraphNewLineSmall),
        _buildParagraph(
          'Pak Ade: “Oh, begitu. Kalau memang ada tempat lain yang cocok, dekat, dan bisa digunakan, saya sih tidak keberatan, Pak.”',
          showIndentation: false,
        ),
        const Space(size: sizes.paragraphNewLineSmall),
        _buildParagraph(
          'Pak Joko: “Oh, syukurlah kalau begitu. Kalau memang bisa latihan di tempat lain, saya dan keluarga bisa tenang.”',
          showIndentation: false,
        ),
        const Space(size: sizes.paragraphNewLineSmall),
        _buildParagraph(
          'Pak Ade: “Baik. Pak RT. Segera saya laksanakan. Terima kasih banyak atas bantuan Bapak.”',
          showIndentation: false,
        ),
        const Space(size: sizes.paragraphNewLineSmall),
        _buildParagraph(
          'Pak Joko: “Saya juga terima kasih Pak RT atas solusinya. Terima kasih juga Pak Ade atas pengertiannya.”',
          showIndentation: false,
        ),
        const Space(size: sizes.paragraphNewLineSmall),
        _buildParagraph(
          'Pak Ade: “Iya, Pak Joko. Saya juga mohon maaf ya, sudah membuat keluarga Pak Joko tidak nyaman.”',
          showIndentation: false,
        ),
        const Space(size: sizes.paragraphNewLineSmall),
        _buildParagraph(
          'Pak RT: “Baiklah, kalau begitu saya pamit dulu ya, Bapak-Bapak.”',
          showIndentation: false,
        ),
        const Space(size: sizes.paragraphNewLineSmall),
        _buildParagraph(
          'Pak Ade dan Pak Joko: “Ya, Pak. Silakan.”',
          showIndentation: false,
        ),
      ],
    );
  }

  ParagraphText _buildParagraph(
    String text, {
    bool showIndentation = true,
  }) =>
      ParagraphText(
        text: text,
        shouldShowIndentation: showIndentation,
        spaceCount: 3,
      );
}
