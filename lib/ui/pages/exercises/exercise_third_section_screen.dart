import 'package:aplikasi_kem/data/exercise_urls.dart';
import 'package:aplikasi_kem/ui/widgets/scaffolds/exercise_scaffold.dart';
import 'package:aplikasi_kem/ui/widgets/utils/space.dart';
import 'package:aplikasi_kem/utils/browsable_action.dart';
import 'package:aplikasi_kem/utils/ui/exercise_utils.dart';
import 'package:aplikasi_kem/utils/ui/theme_utils.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_kem/utils/values/sizes.dart' as sizes;

class ExerciseThirdSectionScreen extends StatelessWidget {
  const ExerciseThirdSectionScreen({super.key});

  static const String route = '/exercise-third-section';

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
        var success = await openUrl(exerciseTwoUrl);

        if (!success) {
          if (mounted) showAlertDialog(context);
        }
      },
      exerciseContents: generateExerciseUI(
        'Sampah',
        545,
        [
          buildNormalParagraph(
            'Sampah merupakan material sisa yang tidak diinginkan setelah berakhirnya suatu proses. Sampah dapat bersumber dari alam, manusia, konsumsi, nuklir, industri, dan pertambangan. Sampah di bumi akan terus bertambah selama masih ada kegiatan yang dilakukan oleh baik alam maupun manusia. Sampah yang dihasilkan di Indonesia mencapai 11.330 ton per hari. Sampah dapat dibedakan berdasarkan sifat dan bentuknya. Berdasarkan sifatnya, sampah bagi menjadi dua, yaitu sampah organik dan anorganik.',
          ),
          const Space(size: sizes.paragraphNewLineMedium),
          buildNormalParagraph(
            'Sampah organik merupakan sampah yang dapat diuraikan atau degradable. Contoh sampah organik adalah sampah yang mudah membusuk seperti sisa makanan, sayuran, daundaun kering, dan lain sebagainya. Sampah ini dapat diolah menjadi kompos. Sedangkan sampah anorganik merupakan sampah yang tidak mudah diuraikan atau undegradable. Contoh sampah anorganik adalah sampah yang tidak mudah membusuk, seperti plastik, kayu, kaca, kaleng, dan lain sebagainya. Sampah anorganik di daur ulang oleh industri rumahan untuk mengurangi jumlah sampah serta dijadikan sebagai peluang usaha. Berdasarkan bentuknya, sampah dapat dibedakan menjadi sampah padat, cair, alam, konsumsi, manusia dan radioaktif.',
          ),
          const Space(size: sizes.paragraphNewLineMedium),
          buildNormalParagraph(
            'Sampah padat adalah sampah yang berwujud padat. Sampah padat dapat berupa sampah rumah tangga misalnya seperti sampah dapur, kebun, plastik, metal, gelas dan lain-lain. Sampah organik dan anorganik termasuk sampah padat. Sampah ini dapat dibedakan berdasarkan kemampuan diurai oleh alam atau biodegrability menjadi sampah padat biodegradable (sampah yang dapat diuraikan oleh proses biologi) dan sampah padat non-biodegradable (tidak dapat diuraikan oleh suatu proses biologi. Sampah padat non-biodegradable ada dua jenis yaitu recyclable (dapat diolah kembali) dan non-recyclable (tidak dapat diolah kembali).',
          ),
          const Space(size: sizes.paragraphNewLineMedium),
          buildNormalParagraph(
            'Sampah cair adalah bahan cairan yang telah digunakan dan tidak diperlukan lagi, misalnya seperti limbah. Limbah adalah sampah cair yang dihasikan dari aktivitas industri. Limbah dapat dibagi menjadi dua yaitu limbah hitam dan limbah rumah tangga. Limbah hitam adalah sampah cair yang mengandung patogen berbahaya yang berasal dari toilet, sedangkan limbah rumah tangga adalah sampah cair yang dihasilkan dari dapur, kamar mandi, dan tempat cucian.',
          ),
          const Space(size: sizes.paragraphNewLineMedium),
          buildNormalParagraph(
            'Sampah alam adalah sampah yang diproduksi oleh alam dan diuraikan melalui proses daur ulang alami. Contoh dari sampah alam adalah daun kering di hutan yang terurai menjadi tanah. Sampah manusia adalah istilah yang digunakan terhadap hasil-hasil pencernaan manusia, seperti feses dan urin. Sampah manusia dapat menimbulkan dampak negatif bagi kesehatan manusia karena dapat dikatakan sebagai sarana perkembangan penyakit yang disebabkan oleh virus dan bakteri.',
          ),
          const Space(size: sizes.paragraphNewLineMedium),
          buildNormalParagraph(
            'Sampah konsumsi adalah sampah yang dihasilkan oleh kegiatan konsumsi manusia dan dibuang ke tempat sampah. Jumlah sampah konsumsi sampai sekarang tidak melebihi jumlah sampah industri. Limbah radioaktif adalah sampah nuklir yang merupakan hasil dari fusi nuklir dan fisi nuklir yang menghasilkan uranium dan thorium. Limbah radioaktif berbahaya bagi lingkungan dan kehidupan manusia karena menghasilkan radiasi yang berdampak buruk terhadap kesehatan manusia. Oleh karena itu, sampah nuklir disimpan di tempat-tempat yang tidak berpotensi tinggi untuk melakukan aktivitas, tempat-tempat yang dituju biasanya bekas tambang garam atau dasar laut.',
          ),
        ],
      ),
    );
  }
}
