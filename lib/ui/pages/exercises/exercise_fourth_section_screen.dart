import 'package:aplikasi_kem/ui/widgets/texts/main_heading_text.dart';
import 'package:aplikasi_kem/ui/widgets/texts/paragraph_text.dart';
import 'package:aplikasi_kem/ui/widgets/scaffolds/exercise_scaffold.dart';
import 'package:aplikasi_kem/ui/widgets/utils/space.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_kem/utils/values/sizes.dart' as sizes;

class ExerciseFourthSectionScreen extends StatelessWidget {
  const ExerciseFourthSectionScreen({super.key});

  static const String route = '/exercise-fourth-section';

  @override
  Widget build(BuildContext context) {
    return ExerciseScaffold(
      onActionButtonPressed: () {},
      exerciseContents: [
        // Title
        const Center(
          child: MainHeadingText(
            text: 'Nasib Pencuri Sendal',
            textAlign: TextAlign.center,
          ),
        ),
        const Space(size: sizes.paragraphNewLineLarge),

        // Content
        _buildParagraph(
          'Pada suatu pagi, Arya sedang asik makan soto di warung makan kesukaannya. Setelah kenyang Arya bergegas untuk segera pulang.',
        ),
        const Space(size: sizes.paragraphNewLineMedium),
        _buildParagraph(
          'Ditengah perjalanan pulang, Arya mengalami kecelakaan terserempet oleh sepeda motor yang ugal-ugalan. Kecelakaan tersebut mengakibatkan sendal Arya putus.',
        ),
        const Space(size: sizes.paragraphNewLineMedium),
        _buildParagraph(
          'Dengan terpaksa Arya berjalan kaki tanpa menggunakan sandal. Karena rumahnya jauh, ia memutuskan untuk pergi ke toko terdekat untuk membeli sandal. Tapi apa daya, uangnya tidak mencukupi.',
          showIndentation: false,
        ),
        const Space(size: sizes.paragraphNewLineMedium),
        _buildParagraph(
          'Karena uangnya tidak mencukupi, Arya pun mempunyai niat untuk mencuri sandal di masjid yang letaknya hanya beberapa meter dari toko tersebut. Arya hendak mengambil sandal terbaik yang ada di masjid itu.Sambil duduk diteras masjid, ia memperhatikan setiap orang yang akan masuk ke masjid. Jadi ketika targetnya sibuk beribadah, ia segera mengambil sandal tersebut.',
        ),
        const Space(size: sizes.paragraphNewLineMedium),
        _buildParagraph(
          'Ternyata aksinya berjalan dengan lancar, Arya berhasil mendapatkan sandal berwarna hitam yang merupakan sandal terbagus dimasjid tersebut. Tidak diduga, sang pemilik sandal menyadari bahwa Arya telah mencuri sandalnya.Pemilik sandal langsung teriak dan mengejar Arya. Apes sekali Arya, perutnya yang buncit membuat ia tidak bisa berlari kencang. Arya pun dibawa ke kantor polisi. Setelah dilakukan penyelidikan, Arya divonis dengan pasal pencurian dan kasusnya akan disidangkan satu minggu lagi. Sial sekali bagi Arya, hal sepele ini membuatnya harus terseret ke meja hijau.',
        ),
        const Space(size: sizes.paragraphNewLineMedium),
        _buildParagraph(
          'Hari persidangan telah tiba, Arya duduk di kursi tersangka dengan wajah tertunduk.',
          showIndentation: false,
        ),
        const Space(size: sizes.paragraphNewLineMedium),
        _buildParagraph(
          'Hakim  :',
          showIndentation: false,
        ),
        _buildParagraph(
          '“Baiklah, Arya, umur 24 tahun, telah terbukti telah mencuri sandal seharga 30.000 rupiah. Dengan ini,Anda dihukum selama 5 tahun penjara”.',
          showIndentation: false,
          fontStyle: FontStyle.italic,
        ),
        const Space(size: sizes.paragraphNewLineMedium),
        _buildParagraph(
          'Arya :',
          showIndentation: false,
        ),
        _buildParagraph(
          '“Loh?! Pak, ini tidak adil, mengapa hukuman saya jauh lebih berat dibandingkan dengan para koruptor?”.',
          showIndentation: false,
          fontStyle: FontStyle.italic,
        ),
        const Space(size: sizes.paragraphNewLineMedium),
        _buildParagraph(
          'Kemudian, hakim memberikan penjelasan kepada Arya, bahwa ia mencuri sendal sehingga merugikan seseorang 30.000 rupiah. Sedangkan para koruptor mencuri uang 2 miliar sehingga merugikan 200 juta rakyat Indonesia. Nah kalau dihitung, koruptor hanya merugikan 10 rupiah saja setiap orang. Jadi kerugian akibat tindakan yang dilakukan oleh Arya lebih besar daripada tindakan yang dilakukan oleh para koruptor.',
        ),
      ],
    );
  }

  ParagraphText _buildParagraph(
    String text, {
    bool showIndentation = true,
    FontStyle fontStyle = FontStyle.normal,
  }) =>
      ParagraphText(
        text: text,
        shouldShowIndentation: showIndentation,
        spaceCount: 3,
        fontStyle: fontStyle,
      );
}
