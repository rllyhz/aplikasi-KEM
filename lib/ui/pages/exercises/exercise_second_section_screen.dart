import 'package:aplikasi_kem/data/exercise_urls.dart';
import 'package:aplikasi_kem/ui/widgets/texts/main_heading_text.dart';
import 'package:aplikasi_kem/ui/widgets/texts/paragraph_text.dart';
import 'package:aplikasi_kem/ui/widgets/scaffolds/exercise_scaffold.dart';
import 'package:aplikasi_kem/ui/widgets/utils/space.dart';
import 'package:aplikasi_kem/utils/browsable_action.dart';
import 'package:aplikasi_kem/utils/ui/theme_utils.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_kem/utils/values/sizes.dart' as sizes;

class ExerciseSecondSectionScreen extends StatelessWidget {
  const ExerciseSecondSectionScreen({super.key});

  static const String route = '/exercise-second-section';

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
        var success = await openUrl(exerciseOneUrl);

        if (!success) {
          if (mounted) showAlertDialog(context);
        }
      },
      exerciseContents: [
        // Title
        const Center(
          child: MainHeadingText(
            text: 'Wayang',
            textAlign: TextAlign.center,
          ),
        ),
        const Space(size: sizes.paragraphNewLineLarge),

        // Content
        _buildParagraph(
          'Wayang adalah seni pertunjukan yang telah ditetapkan sebagai warisan budaya asli Indonesia. UNESCO, lembaga yang mengurusi kebudayaan dari PBB, pada 7 November 2003 menetapkan wayang sebagai pertunjukan bayangan boneka tersohor berasal dari Indonesia. Wayang merupakan warisan mahakarya dunia yang tidak ternilai dalam seni bertutur (Masterpiece of Oral and Intangible Heritage of Humanity).',
        ),
        const Space(size: sizes.paragraphNewLineMedium),
        _buildParagraph(
          'Para wali songo, penyebar agama Islam di Jawa sudah membagi wayang menjadi tiga. Wayang kulit di Timur, wayang wong atau wayang orang di Jawa Tengah, dan wayang golek atau wayang boneka di Jawa Barat. Penjenisan tersebut disesuaikan dengan penggunaan bahan wayang. Wayang kulit dibuat dari kulit hewan ternak, misalnya kulit kerbau, sapi, atau kambing. Wayang wong berarti wayang yang ditampilkan atau diperankan oleh orang. Wayang golek adalah wayang yang menggunakan boneka kayu sebagai pemeran tokoh. Selanjutnya, untuk mempertahankan budaya wayang agar tetap dicintai, seniman mengembangkan wayang dengan bahan-bahan lain, antara lain wayang suket dan wayang motekar.',
        ),
        const Space(size: sizes.paragraphNewLineMedium),
        _buildParagraph(
          'Wayang kulit dilihat dari umur, dan gaya pertunjukannya pun dibagi lagi menjadi bermacam jenis. Jenis yang paling terkenal, karena diperkirakan memiliki umur paling tua adalah wayang purwa. Purwa berasal dari bahasa Jawa, yang berarti awal. Wayang ini terbuat dari kulit kerbau yang ditatah, dan diberi warna sesuai kaidah pulasan wayang pendalangan, serta diberi tangkai dari bahan tanduk kerbau bule yang diolah sedemikian rupa dengan nama cempurit yang terdiri atas tuding dan gapit.',
        ),
        const Space(size: sizes.paragraphNewLineMedium),
        _buildParagraph(
          'Wayang wong (bahasa Jawa yang berarti ‘orang’) adalah salah satu pertunjukan wayang yang diperankan langsung oleh orang. Wayang orang yang dikenal di suku Banjar adalah wayang gung, sedangkan yang dikenal di suku Jawa adalah wayang topeng. Wayang topeng dimainkan oleh orang yang menggunakan topeng. Wayang tersebut dimainkan dengan iringan gamelan dan tari tarian. Perkembangan wayang orang pun saat ini beragam, tidak hanya digunakan dalam acara ritual, tetapi juga digunakan dalam acara yang bersifat menghibur.',
        ),
        const Space(size: sizes.paragraphNewLineMedium),
        _buildParagraph(
          'Selanjutnya, jenis wayang yang lain adalah wayang golek yang mempertunjukkan boneka kayu. Wayang golek berasal dari Sunda. Selain wayang golek Sunda, wayang yang terbuat dari kayu adalah wayang menak atau sering juga disebut wayang golek menak karena cirinya mirip dengan wayang golek. Wayang tersebut kali pertama dikenalkan di Kudus. Selain golek, wayang yang berbahan dasar kayu adalah wayang klithik. Wayang klithik berbeda dengan golek. Wayang tersebut berbentuk pipih seperti wayang kulit. Akan tetapi, cerita yang diangkat adalah cerita Panji dan Damarwulan. Wayang lain yang terbuat dari kayu adalah wayang papak atau cepak, wayang timplong, wayang potehi, wayang golek techno, dan wayang ajen.',
        ),
        const Space(size: sizes.paragraphNewLineMedium),
        _buildParagraph(
          'Perkembangan terbaru dunia pewayangan menghasilkan kreasi berupa wayang suket. Jenis wayang ini disebut suket karena wayang yang digunakan terbuat dari rumput yang dibentuk menyerupai wayang kulit. Wayang suket merupakan tiruan dari berbagai figur wayang kulit yang terbuat dari rumput (bahasa Jawa: suket). Wayang suket biasanya dibuat sebagai alat permainan atau penyampaian cerita pewayangan kepada anak-anak di desa-desa Jawa.',
        ),
        const Space(size: sizes.paragraphNewLineMedium),
        _buildParagraph(
          'Dalam versi lebih modern, terdapat wayang motekar atau wayang plastic berwarna. Wayang motekar adalah sejenis pertunjukan teater bayang-bayang atau serupa wayang kulit. Namun, jika wayang kulit memiliki bayangan yang berwarna hitam saja, wayang motekar menggunakan teknik terbaru hingga bayang-bayangnya bisa tampil dengan warna-warni penuh. Wayang tersebut menggunakan bahan plastik berwarna, sistem pencahayaan teater modern, dan layar khusus.',
        ),
        const Space(size: sizes.paragraphNewLineMedium),
        _buildParagraph(
          'Semua jenis wayang di atas merupakan wujud ekspresi kebudayaan yang dapat dimanfaatkan dalam berbagai kehidupan antara lain sebagai media pendidikan, media informasi, dan media hiburan. Wayang bermanfaat sebagai media pendidikan karena isinya banyak memberikan ajaran kehidupan kepada manusia. Pada era modern ini, wayang juga banyak digunakan sebagai media informasi. Ini antara lain dapat kita lihat pada pagelaran wayang yang disisipi informasi tentang program pembangunan seperti keluarga berencana (KB), pemilihan umum, dan sebagainya.Yang terakhir, meski semakin jarang, wayang masih tetap menjadi media hiburan.',
        ),
      ],
    );
  }

  ParagraphText _buildParagraph(String text) => ParagraphText(
        text: text,
        shouldShowIndentation: true,
        spaceCount: 3,
      );
}
