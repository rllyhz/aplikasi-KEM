import 'package:aplikasi_kem/ui/widgets/main_heading_text.dart';
import 'package:aplikasi_kem/ui/widgets/paragraph_text.dart';
import 'package:aplikasi_kem/ui/widgets/scaffolds/exercise_scaffold.dart';
import 'package:aplikasi_kem/ui/widgets/space.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_kem/utils/values/sizes.dart' as sizes;

class ExerciseSixthSectionScreen extends StatelessWidget {
  const ExerciseSixthSectionScreen({super.key});

  static const String route = '/exercise-sixth-section';

  @override
  Widget build(BuildContext context) {
    return ExerciseScaffold(
      onActionButtonPressed: () {},
      exerciseContents: [
        // Title
        const Center(
          child: MainHeadingText(
            text: 'I Gusti Ngurah Rai',
            textAlign: TextAlign.center,
          ),
        ),
        const Space(size: sizes.paragraphNewLineLarge),

        // Content
        _buildParagraph(
          'Brigjen TNI (anumerta) I Gusti Ngurah Rai adalah seorang pahlawan Indonesia dari Kabupaten Badung, Bali. Ia lahir di Desa Carangsari, Petang, Kabupaten Badung, Bali, Hindia Belanda, 30 Januari 1917 dan meninggal di Marga, Tabanan, Bali, Indonesia, 20 November 1946 pada umur 29 tahun. I Gusti Ngurah Rai merupakan anak dari seorang camat Petang, I Gusti Ngurah Palung. Sejak kecil Ia tertarik dengan dunia militer, Ia sekolah di HIS Denpasar lalu melanjutkan dengan MULO yang ada di Malang.',
        ),
        const Space(size: sizes.paragraphNewLineMedium),
        _buildParagraph(
          'Lulus dari MULO, ia kemudian bergabung dengan sekolah kader militer, Prayodha Bali, Gianyar. Pada tahun 1940, Ngurah Rai dilantik sebagai Letnan II yang kemudian melanjutkan pendidikan di Corps Opleiding Voor Reserve Officieren (CORO), Magelang dan Pendidikan Artileri, Malang.',
        ),
        const Space(size: sizes.paragraphNewLineMedium),
        _buildParagraph(
          'Pada masa kependudukan Jepang, Ngurah Rai sempat menjadi intel sekutu di daerah Bali dan Lombok. Setelah kabar Indonesia merdeka pada tahun 1945 akhirnya sampai di Bali, BKR berganti nama menjadi Tentara Keamanan Rakyat (TKR) Sunda Kecil di mana ia sebagai komandannya. Sebagai komandan TKR Sunda Kecil, Ngurah Rai merasa perlu untuk melakukan konsolidasi dengan pimpinan TKR pusat di mana saat itu bermarkas di Jogjakarta. Sampai di Jogjakarta, Ngurah Rai dilantik menjadi komandan resimen Sunda Kecil berpangkat Letnan Kolonel.',
        ),
        const Space(size: sizes.paragraphNewLineMedium),
        _buildParagraph(
          'Saat Ngurah Rai kembali ke Bali, Ia mendapati bahwa Belanda telah menduduki Bali dengan mempengaruhi raja-raja Bali. Sebanyak kurang lebih 2000 pasukan dengan persenjataan lengkap dan sejumlah pesawat terbang yang berhasil dihimpun Belanda telah siap berperang menyerang Ngurah Rai dan pasukan kecilnya. Pertempuran tersebut dilatar belakangi dengan kekecewaan Ngurah Rai atas hasil dari perjanjian Linggarjati antara Belanda dan pemerintah Indonesia. Dalam perjanjian tersebut menyebutkan bahwa pemerintah Belanda mengakui kekuasaan Indonesia yang meliputi pulau Jawa, Madura dan Sumatera. Sedangkan Bali diakui menjadi bagian dari negara Indonesia timur bikinan Belanda.',
        ),
        const Space(size: sizes.paragraphNewLineMedium),
        _buildParagraph(
          'Pada tanggal 18 November 1946 bersama Ciung Wanara, pasukan kecil Ngurah Rai menyerang Tabanan yang menghasilkan satu datasemen Belanda dengan persenjataan lengkap menyerah. Hal ini memicu Belanda untuk membalas pertempuran lebih sengit dan mengerahkan kekuatannya yang ada di seluruh pulau Bali dan Lombok untuk membalas perbuatan Ngurah Rai.',
        ),
        const Space(size: sizes.paragraphNewLineMedium),
        _buildParagraph(
          'Pada perang puputan, dalam pertempuran tersebut, pertahanan demi pertahanan yang dibentuk Ngurah Rai hancur hingga sampai pada pertahanan terakhir Ciung Wanara, desa Margarana, Ngurah Rai dan pasukannya berhasil dipukul mundur lantaran seluruhnya jatuh ke dalam jurang yang dalam. Perang tersebut akhirnya dikenal dengan perang Puputan Margarana, karena sebelum gugur, Ngurah Rai sempat meneriakkan kata puputan yang berarti perang habis-habisan. Peristiwa tersebut terjadi pada tanggal 20 November 1946.',
        ),
        const Space(size: sizes.paragraphNewLineMedium),
        _buildParagraph(
          'Berkat usahanya tersebut, Ngurah Rai mendapatkan gelar Bintang Mahaputra dan kenaikan pangkat menjadi Brigjen TNI (anumerta). Tak hanya itu, ia juga mendapatkan gelar Pahlawan Nasional berdasarkan SK Presiden RI no 63/TK/1975 tanggal 9 Agustus 1975. Namanya kemudian diabadikan dalam nama bandar udara di Bali, Bandara Ngurah Rai.',
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
