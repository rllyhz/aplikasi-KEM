import 'package:aplikasi_kem/data/exercise_urls.dart';
import 'package:aplikasi_kem/ui/widgets/scaffolds/exercise_scaffold.dart';
import 'package:aplikasi_kem/ui/widgets/utils/space.dart';
import 'package:aplikasi_kem/utils/browsable_action.dart';
import 'package:aplikasi_kem/utils/ui/exercise_utils.dart';
import 'package:aplikasi_kem/utils/ui/theme_utils.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_kem/utils/values/sizes.dart' as sizes;

class ExerciseSixthSectionScreen extends StatelessWidget {
  const ExerciseSixthSectionScreen({super.key});

  static const String route = '/exercise-sixth-section';

  bool get mounted {
    try {
      (this as Element).widget;
      return true;
    } on TypeError catch (_) {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ExerciseScaffold(
      onActionButtonPressed: () async {
        var success = await openUrl(exerciseFiveUrl);

        if (!success) {
          if (mounted) showAlertDialog(context);
        }
      },
      exerciseContents: generateExerciseUI(
        'Latihan Pentas Musik',
        548,
        [
          buildNoIndentParagraph('Pak Joko: \n“Selamat siang, Pak Ade.”'),
          const Space(size: sizes.paragraphNewLineMedium),
          buildNoIndentParagraph(
              'Pak Ade: \n“Oh, Pak Joko rupanya. Selamat siang juga Pak.”'),
          const Space(size: sizes.paragraphNewLineMedium),
          buildNoIndentParagraph(
              'Pak Joko: \n“Saya amati putra Pak Ade dan teman-temannya sering latihan musik di rumah ya?'),
          const Space(size: sizes.paragraphNewLineMedium),
          buildNoIndentParagraph(
              'Pak Ade: \n“Oh, iya nih, Pak. Maklum, sebentar lagi putra saya mau ikut pentas musik di sekolahnya, Pak.”'),
          const Space(size: sizes.paragraphNewLineMedium),
          buildNoIndentParagraph(
              'Pak Joko: \n“Oh, ya. Sebelumnya saya minta maaf nih, Pak Ade. Sebagai tetangga, saya harus menyampaikan hal ini karena sudah beberapa hari saya dan keluarga merasa terganggu. Jujur saja, suara yang ditimbulkan oleh latihan musik putra Pak Ade dan teman-temannya terlalu berisik. Saya dan keluarga jadi sulit istirahat. Apalagi istri saya sekarang kan sedang punya anak bayi.”'),
          const Space(size: sizes.paragraphNewLineMedium),
          buildNoIndentParagraph(
              'Pak Ade: \n“Wah, begitu ya. Maaf saya tidak tahu jika suaranya terdengar sampai rumah Pak Joko. Tapi mau bagaimana lagi ya. Kalau tidak latihan, kasihan juga sama anak saya.”'),
          const Space(size: sizes.paragraphNewLineMedium),
          buildNoIndentParagraph(
              'Pak Joko: \n“Iya, tapi apa tidak bisa diatur agar suaranya tidak terlalu keras dan hanya dibunyikan pada waktu tertentu saja?”'),
          const Space(size: sizes.paragraphNewLineMedium),
          buildNoIndentParagraph(
              'Pak Ade: \n“Mohon pengertiannya, Pak. Ini hanya sementara. Mungkin hanya sampai minggu depan. Saya juga tidak ingin mengecewakan anak saya yang akan tampil pentas musik minggu depan.”'),
          const Space(size: sizes.paragraphNewLineMedium),
          buildNoIndentParagraph(
              'Pak Joko: \n“Kalau memang Pak Ade bersikeras, terpaksa saya harus menyampaikan hal ini pada Pak RT. Nah, itu Pak RT kebetulan lewat. Saya akan membawanya ke sini.” (Pak Joko menghampiri Pak RT dan menyampaikan keluhannya. Pak RT pun mendatangi Pak Ade)'),
          const Space(size: sizes.paragraphNewLineMedium),
          buildNoIndentParagraph('Pak RT: \n“Selamat siang, Pak Ade.”'),
          const Space(size: sizes.paragraphNewLineMedium),
          buildNoIndentParagraph('Pak Ade: \n“Selamat siang juga Pak.”'),
          const Space(size: sizes.paragraphNewLineMedium),
          buildNoIndentParagraph(
              'Pak RT: \n“Saya mendengar keluhan Pak Joko tentang putra Pak Ade dan teman-temannya yang bermain musik dan mengganggu waktu istirahat tetangga sekitar. Apakah kita bisa mencari solusi terbaik atas masalah ini, Pak?”'),
          const Space(size: sizes.paragraphNewLineMedium),
          buildNoIndentParagraph(
              'Pak Ade: \n“Iya, Pak RT. Saya akui, putra saya dan teman-temannya sering bermain musik di rumah, tapi itu hanya sementara sampai minggu depan karena mereka akan pentas musik, Pak. Mohon pengertiannya.”'),
          const Space(size: sizes.paragraphNewLineMedium),
          buildNoIndentParagraph(
              'Pak Joko: \n“Tidak bisa, Pak Ade. Saya sudah cukup bersabar selama bebe rapa hari terganggu. Suara putra Pak Ade dan teman-temannya yang bermain musik terlalu bising sehingga saya sulit untuk tidur siang. Selain itu, kebetulan juga saya kan lagi punya anak bayi sekarang. Kasihan juga bayi saya sering menangis karena ada musik yang keras.”'),
          const Space(size: sizes.paragraphNewLineMedium),
          buildNoIndentParagraph(
              'Pak RT: \n“Mohon bersabar Bapak-Bapak. Jangan emosi dulu ya. Begini saja, kebetulan RT kita memiliki fasilitas ruang musik tidak jauh dari sini yang mungkin bisa digunakan untuk latihan putra Pak Ade dan teman-temannya. Tempatnya cukup layak dan memiliki peredam suara. Dengan demikian, putra Pak Ade dan teman-temannya masih bisa latihan musik dan Pak Joko beserta keluarga tidak lagi terganggu. Bagaimana Bapak-Bapak?”'),
          const Space(size: sizes.paragraphNewLineMedium),
          buildNoIndentParagraph(
              'Pak Ade: \n“Oh, begitu. Kalau memang ada tempat lain yang cocok, dekat, dan bisa digunakan, saya sih tidak keberatan, Pak.”'),
          const Space(size: sizes.paragraphNewLineMedium),
          buildNoIndentParagraph(
              'Pak Joko: \n“Oh, syukurlah kalau begitu. Kalau memang bisa latihan di tempat lain, saya dan keluarga bisa tenang.”'),
          const Space(size: sizes.paragraphNewLineMedium),
          buildNoIndentParagraph(
              'Pak RT: \n“Syukurlah, kalau Pak Ade dan Pak Joko bisa menerima. Nanti Pak Ade silakan minta putra Pak Ade dan teman-temannya tuk memindahkan alat-alat musiknya. Saya akan menyiapkan dulu tempatnya.”'),
          const Space(size: sizes.paragraphNewLineMedium),
          buildNoIndentParagraph(
              'Pak Ade: \n“Baik. Pak RT. Segera saya laksanakan. Terima kasih banyak atas bantuan Bapak.”'),
          const Space(size: sizes.paragraphNewLineMedium),
          buildNoIndentParagraph(
              'Pak Joko: \n“Saya juga terima kasih Pak RT atas solusinya. Terima kasih juga Pak Ade atas pengertiannya.”'),
          const Space(size: sizes.paragraphNewLineMedium),
          buildNoIndentParagraph(
              'Pak Ade: \n“Iya, Pak Joko. Saya juga mohon maaf ya, sudah membuat keluarga Pak Joko tidak nyaman.”'),
          const Space(size: sizes.paragraphNewLineMedium),
          buildNoIndentParagraph(
              'Pak RT: \n“Baiklah, kalau begitu saya pamit dulu ya, Bapak-Bapak.”'),
          const Space(size: sizes.paragraphNewLineMedium),
          buildNoIndentParagraph('Pak Ade dan Pak Joko: \n“Ya, Pak. Silakan.”'),
        ],
      ),
    );
  }
}
