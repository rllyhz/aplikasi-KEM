import 'package:aplikasi_kem/ui/widgets/main_heading_text.dart';
import 'package:aplikasi_kem/ui/widgets/paragraph_text.dart';
import 'package:aplikasi_kem/ui/widgets/scaffolds/exercise_scaffold.dart';
import 'package:aplikasi_kem/ui/widgets/space.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_kem/utils/values/sizes.dart' as sizes;

class ExerciseThirdSectionScreen extends StatelessWidget {
  const ExerciseThirdSectionScreen({super.key});

  static const String route = '/exercise-third-section';

  @override
  Widget build(BuildContext context) {
    return ExerciseScaffold(
      onActionButtonPressed: () {},
      exerciseContents: [
        // Title
        const Center(
          child: MainHeadingText(
            text: 'Pentingnya Budaya Membaca',
            textAlign: TextAlign.center,
          ),
        ),
        const Space(size: sizes.paragraphNewLineLarge),

        // Content
        _buildParagraph(
          'Membaca adalah salah satu cara untuk mendapatkan informasi selain dengan mendengarkan dan melihat. Informasi yang didapatkan adalah informasi tertulis. Membaca perlu ditekankan kepada setiap individu sejak dini karena informasi yang paling mudah untuk kita peroleh adalah melalui bacaan, baik koran, majalah, tabloid, maupun buku-buku.',
        ),
        const Space(size: sizes.paragraphNewLineMedium),
        _buildParagraph(
          'Orang yang menerapkan budaya membaca dalam hidupnya akan dipenuhi oleh informasi yang up to date dan ilmu pengetahuan. Minimnya budaya membaca di kalangan remaja Indonesia perlu diperhatikan. Problema tersebut, tidak bisa kita anggap remeh karena besarnya rasa cinta membaca sama dengan kemajuan. Artinya, suatu tingkatan minat baca seseorang menentukan tingkat kualitas serta wawasannya. Kebiasaan membaca perlu ditingkatkan terutama kepada para remaja Indonesia. Dalam proses belajar mengajar, mustahil berhasil tanpa adanya “membaca.”',
        ),
        const Space(size: sizes.paragraphNewLineMedium),
        _buildParagraph(
          'Suatu asumsi menyatakan budaya membaca lebih penting daripada sekolah dalam tujuan mencapai kesuksesan. Suka membaca tanpa bersekolah masih berpeluang dalam mencapai kesuksesan, karena membaca membuat pola pikir kita luas dan tajam. Meningkatkan tingkat kreativitas kita dalam bekerja atau menciptakan lapangan kerja guna mencapai kesuksesan. Sedangkan, tidak suka membaca, tapi bersekolah, peluang untuk mencapai kesuksesan lebih kecil. Banyak lulusan kuliah yang menjadi seorang pengangguran karena minat bacanya pasti kurang. Maka dari itu, membaca sangatlah penting bagi semua umur. Dari umur ketika kita mulai bisa membaca sampai kita tua pun kita haruslah terus menerapkan budaya membaca.',
        ),
        const Space(size: sizes.paragraphNewLineMedium),
        _buildParagraph(
          'Budaya membaca sangat bermanfaat untuk memperdalam ilmu pengetahuan, baik itu dari sekolah maupun dari luar sekolah karena kita hanya dapat 25% dari sekolah dan sisanya 75% itu kita peroleh sendiri. Dengan budaya membaca sejak dini, akan membuat kita tahu akan dunia di luar rumah kita tanpa harus keluar dari rumah.',
        ),
        const Space(size: sizes.paragraphNewLineMedium),
        _buildParagraph(
          'Membaca dipandang sebagai suatu kegiatan yang amat strategi dan mendasar dalam perkembangan kepribadian/psikologi pada setiap diri manusia. Kenyataan ini dapat dilihat dari kebiasaan seseorang, bahwa apa yang dibaca akan berpengaruh terhadap pola pikir dan perilakunya pada kehidupan sehari-hari.',
        ),
        const Space(size: sizes.paragraphNewLineMedium),
        _buildParagraph(
          'Membaca juga merupakan kegiatan pembelajaran memadukan ide-ide guna menyusun konsep, dan membandingkan pengetahuan baru dengan pengetahuan yang sebelumnya. Implementasi dari penyerapan proses membaca buku, dapat dilihat hasilnya pada kecerdasan melakukan proses analisis dan pelaksanaannya pada olah keterampilan yang dimiliki. Orang yang menerapkan budaya membaca mempunyai logika yang lebih besar dan proses analisis yang lebih besar dibandingkan orang yang jarang membaca.',
        ),
        const Space(size: sizes.paragraphNewLineMedium),
        _buildParagraph(
          'Pemasalahan di sini adalah rakyat di negara kita kebanyakan yang malas membaca karena menurut mereka informasi lebih mudah didapatkan dan diproses oleh mereka dengan cara menonton. Jika dibandingkan dengan masyarakat luar, kita pastilah tertinggal jauh. Masyarakat di negara maju selalu menyempatkan waktu mereka dalam sehari untuk membaca. Oleh karena itu, membaca tidak hanya membantu kita secara induvidual, membaca juga dapat membantu memajukan negara kita.',
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
