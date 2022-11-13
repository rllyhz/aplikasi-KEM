import 'package:aplikasi_kem/data/exercise_urls.dart';
import 'package:aplikasi_kem/ui/widgets/scaffolds/exercise_scaffold.dart';
import 'package:aplikasi_kem/ui/widgets/utils/space.dart';
import 'package:aplikasi_kem/utils/browsable_action.dart';
import 'package:aplikasi_kem/utils/ui/exercise_utils.dart';
import 'package:aplikasi_kem/utils/ui/theme_utils.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_kem/utils/values/sizes.dart' as sizes;

class ExerciseNinthSectionScreen extends StatelessWidget {
  const ExerciseNinthSectionScreen({super.key});

  static const String route = '/exercise-ninth-section';

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
        var success = await openUrl(exerciseEightUrl);

        if (!success) {
          if (mounted) showAlertDialog(context);
        }
      },
      exerciseContents: generateExerciseUI(
        'RA Kartini, Pahlawan Emansipasi Wanita Indonesia',
        787,
        [
          buildNormalParagraph(
              'Raden Adjeng Kartini atau lebih tepat disebut Raden Ayu Kartini lahir di Jepara Jawa Tengah tanggal 21 April 1879 dan wafat di Rembang Jawa Tengah tanggal 17 September 1904 pada umur 25 tahun. R.A Kartini lahir dari keluarga ningrat Jawa. Ayahnya, R.M.A.A Sosroningrat. Ibunya bernama M.A. Ngasirah. Tampak bahwa R.A Kartini adalah seorang priyayi dan aristokrat. Pada saat yang sama ia memiliki darah pesantren karena ibunya merupakan putri dari Nyai Haji Siti Aminah dan Kyai Haji Madirono, seorang guru agama di Telukawur Jepara.'),
          const Space(size: sizes.paragraphNewLineMedium),
          buildNormalParagraph(
              'R.A Kartini adalah anak ke-5 dari 11 bersaudara kandung dan tiri. Dari kesemua saudara sekandung, R.A Kartini adalah anak perempuan tertua. Kakak R.A Kartini, Sosrokartono adalah seorang yang pintar dalam bidang bahasa. Sampai usia 12 tahun R.A Kartini diperbolehkan bersekolah di ELS (Europese Lagere School). Disini antara lain R.A Kartini belajar bahasa Belanda. Tetapi setelah usia 12 tahun harus tinggal di rumah karena sudah bisa dipingit.'),
          const Space(size: sizes.paragraphNewLineMedium),
          buildNormalParagraph(
              'Sahabat-sahabatnya orang Belanda, berikhtiar supaya jangan dipingit tetapi siasia saja. Orang tua R.A Kartini memegang adat memingit dengan teguh meskipun dalam hal-hal lain sudah maju, bahkan sebenarnya keluarga yang termaju di pulau Jawa. Empat tahun lamanya R.A Kartini tidak diizinkan keluar. Tetapi semangat zaman tidak dapat diulang. Sahabatsahabat orang Eropa tidak berhenti berikhtiar agar R.A Kartini diberi kemerdekaannya kembali. Oleh sebab itu ketika berumur 16 tahun (pada tahun 1895), R.A Kartini diperbolehkan melihat dunia luar lagi. Enam bulan kemudian diijinkan keluar sekali lagi kemudian dipingit lagi tetapi baru pada tahun 1898 diberi kemerdekaan dengan resmi bahkan diijinkan turut bepergian untuk keluar dari tempat tinggalnya.'),
          const Space(size: sizes.paragraphNewLineMedium),
          buildNormalParagraph(
              'R.A Kartini bisa berbahasa Belanda maka di rumah mulai belajar sendiri dan menulis surat kepada teman-teman korespondensi yang berasal dari Belanda. Salah satunya adalah Rosa Abendanon yang banyak mendukungnya. Dari bukubuku, koran, dan majalah Eropa, R.A Kartini tertarik pada kemajuan berpikir perempuan Eropa. Timbul keinginannya untuk memajukan perempuan pribumi, dimana kondisi sosial saat itu perempuan pribumi berada pada status sosial yang rendah. Di antara buku yang dibaca Kartini sebelum berumur 20 terdapat judul Max Havelaar dan Surat-Surat Cinta karya Multatuli, yang pada November 1901 sudah dibacanya dua kali.'),
          const Space(size: sizes.paragraphNewLineMedium),
          buildNormalParagraph(
              'R.A Kartini juga banyak membaca surat kabar Semarang De Locomotief yang diasuh Pieter Brooshooft, juga menerima leestrommel (paket majalah yang diedarkan toko buku kepada langganan). Diantaranya terdapat majalah kebudayaan dan ilmu pengetahuan yang cukup berat, juga ada majalah wanita Belanda De Hollandsche Lelie. R.A Kartini kemudian beberapa kali mengirimkan tulisannya dan dimuat di De Hollandsche Lelie. Pemikiran milik RA Kartini mampu menarik banyak perhatian masyarakat masa itu, khususnya kaum Belanda. Mereka tertarik pada surat-surat yang ditujukan pada ke orang Eropa yang ternyata buah pemikiran wanita pribumi. Pemikiran RA Kartini mampu menggantikan pandangan masyarakat Belanda pada wanita pribumi di masa itu. Merekapun angkat topi atas pemikiran Kartini. Kartini dikagumi tidak hanya di dalam negeri, melainkan hingga ke seluruh penjuru negeri.'),
          const Space(size: sizes.paragraphNewLineMedium),
          buildNormalParagraph(
              'Surat-surat yang selama ini sudah terkumpul oleh J.H. Abendanonlah yang kemudian menjadi cikal bakan pencetakan buku dengan tajuk awalnya “Door Duisternis tot Licht”. Kemudian judulnya diterjemahkan menjadi “Dari Kegelapan Menuju Cahaya” tahun 1922 oleh penerbit Balai Pustaka, buku ini diterbitkan hingga 5 kali. Yang menarik pada buku ini, pada cetakan kelima terdapat lampiran surat-surat Kartini.'),
          const Space(size: sizes.paragraphNewLineMedium),
          buildNormalParagraph(
              'Setelah dipingit dari usia 15 tahun, R.A Kartini akhirnya menikah pada usia 24 tahun . Tanggal 12 November 1903, K.R.M Adipati Ario Singgih Djojo Adhiningrat memperistrinya. Namun sayangnya Kartini bukanlah sebagai istri pertama, melainkan sebagai istri keempat dari Bupati Rembang tersebut. Ternyata Suami Kartini bisa mengerti jalan pikiran Kartini. Suaminya pun mendukung keinginan Kartini untuk mendirikan sekolah wanita. Keinginan Kartini pun semakin menguat terpatri dalam sanubarinya. Dia tak dapat membendung lagi keinginan membebaskan para wanita.'),
          const Space(size: sizes.paragraphNewLineMedium),
          buildNormalParagraph(
              'Sayangnya, takdir berkata lain. Kartini tak bisa berjuang lebih lama dalam mengangkat harkat derajat wanita karena Kartini wafat di usia 25 tahun. 4 hari setelah melahirkan putra semata wayang, RM Soesalit Djojoadhiningrat yang lahir pada tanggal 13 September 1904, Kartini menghembuskan nafas terakhirnya. Kematian Kartini cukup mengejutkan karena selama masa hamil dan melahirkan Kartini tampak sehat walafiat. Tak ada yang menyangka jika Kartini akan wafat di usia muda. Banyak mimpinya yang belum sempat tercapai tentunya. Untunglah 8 tahun kemudian, tepat di tahun 1912, Sekolah Kartini dibangun yang oleh Yayasan Kartini di Semarang. Adalah oleh keluarga Van Deventer, tokoh Politik Etis kala itu yang menggagas Pembangunan sekolah tersebut. Tak lama pembangunan pun tersebar Yogyakarta, Malang, Madiun, Cirebon, dan beberapa daerah lain.'),
          const Space(size: sizes.paragraphNewLineMedium),
          buildNormalParagraph(
              'Perhatian R.A Kartini tidak hanya semata mata soal emansipasi wanita, tapi juga masalah sosial umum. R.A Kartini melihat perjuangan wanita agar memperoleh kebebasan, otonomi dan persamaan hukum sebagai bagian dari gerakan yang lebih luas. Atas semua jasa dan pemikiran R.A Kartini akhinya pada tanggal 2 Mei 1964, Presiden Soekarno menetapkan RA Kartini sebagai Pahlawan Kemerdekaan Nasional. Bukan hanya itu, Presiden Soekarno menetapkan hari lahir RA Kartini pada tanggal 21 April untuk diperingati sebagai Hari Kartini hingga sekarang.'),
        ],
      ),
    );
  }
}
