import 'package:aplikasi_kem/data/exercise_urls.dart';
import 'package:aplikasi_kem/ui/widgets/scaffolds/exercise_scaffold.dart';
import 'package:aplikasi_kem/ui/widgets/utils/space.dart';
import 'package:aplikasi_kem/utils/browsable_action.dart';
import 'package:aplikasi_kem/utils/ui/exercise_utils.dart';
import 'package:aplikasi_kem/utils/ui/theme_utils.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_kem/utils/values/sizes.dart' as sizes;

class ExerciseSeventhSectionScreen extends StatelessWidget {
  const ExerciseSeventhSectionScreen({super.key});

  static const String route = '/exercise-seventh-section';

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
        var success = await openUrl(exerciseSixUrl);

        if (!success) {
          if (mounted) showAlertDialog(context);
        }
      },
      exerciseContents: generateExerciseUI(
        'Penjual yang Baik Hati',
        380,
        [
          buildNoIndentParagraph(
              'Di sebuah pasar tradisional, Bu Heri mau membeli daging di salah satu lapak langganannya.'),
          const Space(size: sizes.paragraphNewLineMedium),
          buildNoIndentParagraph(
              'Penjual: \n“Selamat pagi Bu Heri, Wah sudah belanja macam-macam, ya?”'),
          const Space(size: sizes.paragraphNewLineMedium),
          buildNoIndentParagraph(
              'Bu Heri: \n“Iya pak. Nanti sore akan ada arisan. Jadi, hari ini rencananya masak agak lebih banyak dibandingkan biasanya”.'),
          const Space(size: sizes.paragraphNewLineMedium),
          buildNoIndentParagraph(
              'Penjual: \n“Oohh. Ini kebetulan dagingnya segar-segar Bu. Baru sampai subuh tadi, belum kena freezer. Ibu Heri mau daging apa? Kambing apa sapi?”'),
          const Space(size: sizes.paragraphNewLineMedium),
          buildNoIndentParagraph(
              'Bu Heri: \n“Sapi sajalah Pak. Tidak berani makan daging kambing. Suami saya sedang naik tensinya, bisa gawat kalau makan daging kambing.”'),
          const Space(size: sizes.paragraphNewLineMedium),
          buildNoIndentParagraph(
              'Penjual: \n“Oh, tensinya sering naik, ya Bu? Kalau saya tiap hari makan daging, mau sapi atau kambing tidak masalah buat saya. Sejauh ini tensi saya aman, Bu. Akan tetapi, saya rajin makan ketimun, melon, semangka, apel, kangkung biar seimbang, Bu. Jangan lupa juga banyak minum air putih. Satu lagi yang terpenting adalah harus ikhlas, Bu!”'),
          const Space(size: sizes.paragraphNewLineMedium),
          buildNoIndentParagraph('Bu Heri: \n“Ikhlas, bagaimana pak?”'),
          const Space(size: sizes.paragraphNewLineMedium),
          buildNoIndentParagraph(
              'Penjual: \n“Ya, kalau menjalani hidup ini ikhlas pasti, kan adem ayem saja. Jadi, tensinya tidak akan naik.”'),
          const Space(size: sizes.paragraphNewLineMedium),
          buildNoIndentParagraph('Bu Heri: \n“Betul juga Bapak ini.”'),
          const Space(size: sizes.paragraphNewLineMedium),
          buildNoIndentParagraph(
              'Penjual: \n“Nah, ini! Ibu, silakan pilih, mau bagian mana? paha atau iga? Bu Heri : Kalau paha sekilonya berapa pak?”'),
          const Space(size: sizes.paragraphNewLineMedium),
          buildNoIndentParagraph(
              'Bu Heri : \n“Kalau paha sekilonya berapa pak?”'),
          const Space(size: sizes.paragraphNewLineMedium),
          buildNoIndentParagraph(
              'Penjual: \n“Masih sama bu seperti kemarin, 110 ribu, Bu.”'),
          const Space(size: sizes.paragraphNewLineMedium),
          buildNoIndentParagraph('Bu Heri: \n“Kalau iga?”'),
          const Space(size: sizes.paragraphNewLineMedium),
          buildNoIndentParagraph(
              'Penjual: \n“Buat Bu Heri, saya berikan diskon saja, 105 ribu untuk 1 kg iga.”'),
          const Space(size: sizes.paragraphNewLineMedium),
          buildNoIndentParagraph(
              'Bu Heri: \n“Kalau begitu saya ambil daging bagian paha 1 kg, iga ½ kg, tetapi harganya boleh kurang, ya? Kan, saya sudah beli banyak.”'),
          const Space(size: sizes.paragraphNewLineMedium),
          buildNoIndentParagraph(
              'Penjual: “\nYa, sudah, khusus untuk Ibu, semuanya saya berikan harga 210 ribu saja.”'),
          const Space(size: sizes.paragraphNewLineMedium),
          buildNoIndentParagraph(
              'Bu Heri: \n“Terima kasih, Pak. Bonus tulang, juga, Pak. saya hendak membuat kaldu.” Persetujuan.'),
          const Space(size: sizes.paragraphNewLineMedium),
          buildNoIndentParagraph(
              'Penjual: \n“Siap Bu Heri. Pokoknya beres”. (penjual daging itu mulai menyiapkan pesanan Bu Heri)'),
          const Space(size: sizes.paragraphNewLineMedium),
          buildNoIndentParagraph('Bu Heri: \n“Terima kasih, Pak.”'),
          const Space(size: sizes.paragraphNewLineMedium),
          buildNoIndentParagraph(
              'Penjual: \n“Ini Bu, sudah saya pisahkan iga dan paha. Semuanya 210 ribu.”'),
          const Space(size: sizes.paragraphNewLineMedium),
          buildNoIndentParagraph(
              'Bu Heri: \n“Terima kasih, Pak. Ini uangnya.”'),
          const Space(size: sizes.paragraphNewLineMedium),
          buildNoIndentParagraph(
              'Penjual: \n“Uangnya 250 ribu. Ibu tidak mempunyai uang pas?”'),
          const Space(size: sizes.paragraphNewLineMedium),
          buildNoIndentParagraph(
              'Bu Heri: \n“Wah, tidak ada, Pak, memangnya tidak ada kembaliannya, ya?”'),
          const Space(size: sizes.paragraphNewLineMedium),
          buildNoIndentParagraph(
              'Penjual: \n“Iya, belum ada uang kembaliannya. Begini saja, Ibu membayar 200 ribu dulu saja, sisanya besok ketika ibu belanja di sini.”'),
          const Space(size: sizes.paragraphNewLineMedium),
          buildNoIndentParagraph(
              'Bu Heri: \n“Oh, baiklah, kalau begitu. Besok sisanya akan saya berikan, Pak.”'),
          const Space(size: sizes.paragraphNewLineMedium),
          buildNoIndentParagraph('Penjual: \n“Iya Bu, tidak usah dipikirkan.”'),
          const Space(size: sizes.paragraphNewLineMedium),
          buildNoIndentParagraph('Bu Heri: \n“Terima kasih, Pak.”'),
          const Space(size: sizes.paragraphNewLineMedium),
          buildNoIndentParagraph('Penjual: \n“Ya bu. Salam untuk Pak Heri.”'),
          const Space(size: sizes.paragraphNewLineMedium),
          buildNoIndentParagraph('Bu Heri: \n“Ya Pak.”'),
        ],
      ),
    );
  }
}
