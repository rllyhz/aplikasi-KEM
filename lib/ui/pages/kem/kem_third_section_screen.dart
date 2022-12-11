import 'package:aplikasi_kem/data/audio_utils.dart';
import 'package:aplikasi_kem/ui/widgets/buttons/audio_button.dart';
import 'package:aplikasi_kem/ui/widgets/surfaces/highlight_text_box.dart';
import 'package:aplikasi_kem/ui/widgets/texts/main_heading_text.dart';
import 'package:aplikasi_kem/ui/widgets/texts/paragraph_list.dart';
import 'package:aplikasi_kem/ui/widgets/texts/paragraph_text.dart';
import 'package:aplikasi_kem/ui/widgets/scaffolds/general_scaffold.dart';
import 'package:aplikasi_kem/ui/widgets/utils/space.dart';
import 'package:aplikasi_kem/ui/widgets/texts/sub_heading_text.dart';
import 'package:aplikasi_kem/utils/ui/color_utils.dart' as colors;
import 'package:aplikasi_kem/utils/ui/text_numbering_helpers.dart';
import 'package:aplikasi_kem/utils/values/sizes.dart' as sizes;
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class KEMThirdSectionScreen extends StatefulWidget {
  const KEMThirdSectionScreen({super.key});

  static const String route = '/kem-third-section';

  @override
  State<KEMThirdSectionScreen> createState() => _KEMThirdSectionScreenState();
}

class _KEMThirdSectionScreenState extends State<KEMThirdSectionScreen> {
  AudioPlayer player = AudioPlayer();
  PlayerState playerState = PlayerState.stopped;
  AssetSource source = AssetSource("assets/audio/$kemAudioPath");
  bool _isPlaying = false;

  @override
  void initState() {
    super.initState();
    player.setReleaseMode(ReleaseMode.stop);
    player.setVolume(1.0);
    player.audioCache = AudioCache(prefix: "");
  }

  @override
  void dispose() {
    super.dispose();
    player.stop();
    player.release();
    player.dispose();
  }

  void playOrPauseAudio() {
    if (player.state == PlayerState.playing) {
      player.pause();
      _isPlaying = false;
    } else if (player.state == PlayerState.paused) {
      player.resume();
      _isPlaying = true;
    } else {
      player.play(source);
      _isPlaying = true;
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return GeneralScaffold(
      appBarTitleTextColor: colors.darkTextColor,
      illustrationAssetName: 'assets/images/kem/illustration_3.png',
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Audio section
          const SubHeadingText(
            text: audioTitle,
          ),
          const ParagraphText(text: audioDescription),

          const Space(
            size: sizes.paragraphNewLineSmall,
          ),

          Center(
            child: AudioButton(
              isPlaying: _isPlaying,
              width: MediaQuery.of(context).size.width * 0.18,
              onClicked: () {
                playOrPauseAudio();
              },
            ),
          ),

          const Space(
            size: sizes.paragraphNewLineLarge,
          ),

          const MainHeadingText(
            text: 'Ringkasan',
          ),
          const Space(
            size: sizes.paragraphNewLineLarge,
          ),
          const Space(
            size: sizes.paragraphNewLineLarge,
          ),
          const SubHeadingText(
            text: 'Pengertian KEM (Kecepatan Efektif Membaca)',
            isNumbering: true,
            numberingValue: 'a',
            numberingSuffix: NumberingSuffix.parentheses,
          ),
          const Space(
            size: sizes.paragraphNewLineSmall,
          ),
          const ParagraphText(
            text:
                'Kecepatan Efektif Membaca (KEM) atau disebut juga dengan Kecepatan Efektif (KE) adalah perpaduan dari kemampuan motorik (gerakan mata) atau kemampuan visual dengan kemampuan kognitif seseorang dalam membaca. Dengan kata lain KEM merupakan perpaduan antara kecepatan membaca dengan pemahaman isi bacaan.',
            shouldShowIndentation: true,
            spaceCount: 3,
          ),
          const Space(
            size: sizes.paragraphNewLineLarge,
          ),
          const SubHeadingText(
            text: 'Faktor-Faktor yang Mempengaruhi KEM',
            isNumbering: true,
            numberingValue: 'b',
            numberingSuffix: NumberingSuffix.parentheses,
          ),
          const Space(
            size: sizes.paragraphNewLineSmall,
          ),
          const ParagraphText(
            text:
                'Terdapat 3 faktor utama yang dapat mempengaruhi KEM pembaca, antara lain:',
            shouldShowIndentation: true,
            spaceCount: 3,
          ),
          const Space(
            size: sizes.paragraphNewLineSmall,
          ),
          const HighlightTextBox(
            backgroundColor: colors.greyColor,
            child: ParagraphList(
              numberingType: NumberingType.numeric,
              numberingSuffix: NumberingSuffix.parentheses,
              list: [
                'Faktor Pembaca',
                'Faktor Keterbacaan Teks Bacaan',
                'Faktor Guru',
              ],
            ),
          ),
          const Space(
            size: sizes.paragraphNewLineLarge,
          ),
        ],
      ),
    );
  }
}
