import 'package:aplikasi_kem/data/exercise_urls.dart';
import 'package:aplikasi_kem/ui/widgets/scaffolds/exercise_scaffold.dart';
import 'package:aplikasi_kem/ui/widgets/utils/space.dart';
import 'package:aplikasi_kem/utils/browsable_action.dart';
import 'package:aplikasi_kem/utils/ui/exercise_utils.dart';
import 'package:aplikasi_kem/utils/ui/theme_utils.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_kem/utils/values/sizes.dart' as sizes;

class ExerciseFifthSectionScreen extends StatelessWidget {
  const ExerciseFifthSectionScreen({super.key});

  static const String route = '/exercise-fifth-section';

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
        var success = await openUrl(exerciseFourUrl);

        if (!success) {
          if (mounted) showAlertDialog(context);
        }
      },
      exerciseContents: generateExerciseUI(
        'Upaya Melestarikan Lingkungan Hidup',
        495,
        [
          buildNormalParagraph(
              'Permasalahan seputar lingkungan hidup selalu terdengar mengemuka. Kejadian demi kejadian yang dialami di dalam negeri telah memberi dampak yang sangat besar. Tidak sedikit kerugian yang dialami, termasuk nyawa manusia. Namun, hal yang perlu dipertanyakan, apakah pengalaman tersebut sudah cukup menyadarkan manusia untuk melihat kesalahan dalam dirinya? Ataukah manusia justru merasa lebih nyaman dengan sikap menghindar dan menyelamatkan diri dengan tidak memberikan solusi yang lebih baik dan lebih tepat lagi? Banyak usaha yang seharusnya dilakukan oleh manusia dalam upaya pelestarian lingkungan hidup. Upaya yang dimaksud adalah upaya rekonsiliasi, perubahan konsep atau pemahaman tentang alam, dan menanamkan budaya pelestari.'),
          const Space(size: sizes.paragraphNewLineMedium),
          buildNormalParagraph(
              'Kerusakan lingkungan hidup dan efeknya terus berlangsung dan terjadi. Manusia cenderung untuk menangisi nasibnya. Lama-kelamaan tangisan terhadap nasib itu terlupakan dan dianggap sebagai embusan angin yang berlalu. Bekas tangisan karena efek dari kerusakan lingkungan yang dialaminya hanya tinggal menjadi suatu memori untuk dikisahkan. Namun, perlu diingat bahwa tidaklah cukup jika manusia hanya sebatas menangisi nasibnya, tetapi pada kenyataannya tidak pernah sadar bahwa semua kejadian tersebut adalah hasil dari perilaku dan tindakan yang patut diperbaiki dan diubah.'),
          const Space(size: sizes.paragraphNewLineMedium),
          buildNormalParagraph(
              'Setiap peristiwa dan kejadian alam yang diakibatkan oleh kerusakan lingkungan hidup merupakan suatu pertanda bahwa manusia mesti sadar dan berubah. Upaya rekonsiliasi menjadi suatu sumbangan positif yang perlu disadari. Tanpa sikap rekonsiliasi, kejadian-kejadian alam sebagai akibat kerusakan lingkungan hidup hanya akan menjadi langganan yang terus-menerus dialami.'),
          const Space(size: sizes.paragraphNewLineMedium),
          buildNormalParagraph(
              'Lalu, usaha manusia untuk selalu menghindarkan diri dari akibat kerusakan lingkungan hidup tersebut hendaknya bukan dipahami sebagai suatu kenyamanan saja. Akan tetapi, justru kesempatan itu menjadi titik tolak untuk memulai suatu perubahan. Perubahan untuk dapat mencegah dan meminimalisasi efek yang lebih besar. Jadi, sikap rekonsiliasi dari pihak manusia dapat memungkinkannya melakukan perubahan demi kenyamanan di tengah-tengah lingkungan hidupnya.'),
          const Space(size: sizes.paragraphNewLineMedium),
          buildNormalParagraph(
              'Salah satu akar permasalahan seputar kerusakan lingkungan hidup adalah terjadinya pergeseran pemahaman manusia tentang alam. Berbagai fakta kerusakan lingkungan hidup yang terjadi di tanah air adalah hasil dari suatu pergeseran pemahaman manusia tentang alam. Cara pandang tersebut melahirkan tindakan yang salah dan membahayakan. Misalnya, konsep tentang alam sebagai objek. Konsep ini memberi indikasi bahwa manusia cenderung untuk mempergunakan alam seenaknya. Tindakan dan perilaku manusia dalam mengeksplorasi alam terus terjadi tanpa disertai suatu pertanggungjawaban bahwa alam perlu dijaga keutuhan dan kelestariannya.'),
          const Space(size: sizes.paragraphNewLineMedium),
          buildNormalParagraph(
              'Banyak binatang yang seharusnya dilindungi justru menjadi korban perburuan manusia yang tidak bertanggung jawab. Pembalakan liar yang terjadi pun tak dapat dibendung lagi. Pencemaran tanah dan air sudah menjadi kebiasaan yang terus dilakukan. Polusi udara sudah tidak disadari bahwa di dalamnya terdapat kandungan toksin yang membahayakan. Jadi, alam merupakan objek yang terus menerus dieksploitasi dan dipergunakan manusia.'),
          const Space(size: sizes.paragraphNewLineMedium),
          buildNormalParagraph(
              'Berdasarkan kenyatan demikian, diperlukan suatu perubahan konsep baru. Konsep yang dimaksud adalah melihat alam sebagai subjek. Konsep alam sebagai subjek berarti manusia dalam mempergunakan alam membutuhkan kesadaran dan rasa tanggung jawab. Di sini seharusnya manusia dalam hidupnya dapat menghargai dan mempergunakan alam secara efektif dan bijaksana. Misalnya, orang Papua memahami alam sebagai ibu yang memberi kehidupan. Artinya, alam dilihat sebagai ibu yang darinya manusia dapat memperoleh kehidupan. Oleh karena itu, tindakan merusak lingkungan secara tidak langsung telah merusak kehidupan itu sendiri.'),
        ],
      ),
    );
  }
}
