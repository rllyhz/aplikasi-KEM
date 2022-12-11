import 'package:aplikasi_kem/data/audio_utils.dart';
import 'package:aplikasi_kem/ui/widgets/buttons/audio_button.dart';
import 'package:aplikasi_kem/ui/widgets/texts/sub_heading_text.dart';
import 'package:aplikasi_kem/ui/widgets/utils/line_stroke.dart';
import 'package:aplikasi_kem/ui/widgets/texts/main_heading_text.dart';
import 'package:aplikasi_kem/ui/widgets/texts/paragraph_text.dart';
import 'package:aplikasi_kem/ui/widgets/utils/space.dart';
import 'package:aplikasi_kem/utils/ui/theme_utils.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_kem/utils/ui/color_utils.dart' as colors;
import 'package:aplikasi_kem/utils/values/sizes.dart' as sizes;

class BannerScaffold extends StatefulWidget {
  const BannerScaffold({
    super.key,
    required this.bannerAssetName,
    required this.appBarTitleTextColor,
    required this.headingText,
    this.illustrationDescription,
    this.body,
    this.appBarTitleText,
    this.shouldShowAudio = false,
  });

  final String? appBarTitleText;
  final Color appBarTitleTextColor;
  final String bannerAssetName;
  final String? illustrationDescription;
  final String headingText;
  final Widget? body;
  final bool shouldShowAudio;

  @override
  State<BannerScaffold> createState() => _BannerScaffoldState();
}

class _BannerScaffoldState extends State<BannerScaffold> {
  AudioPlayer player = AudioPlayer();
  PlayerState playerState = PlayerState.stopped;
  AssetSource source = AssetSource("assets/audio/$readingAudioPath");
  bool _isPlaying = false;

  @override
  void initState() {
    super.initState();
    if (widget.shouldShowAudio) {
      player.setReleaseMode(ReleaseMode.stop);
      player.setVolume(1.0);
      player.audioCache = AudioCache(prefix: "");
    }
  }

  @override
  void dispose() {
    super.dispose();
    if (widget.shouldShowAudio) {
      player.stop();
      player.release();
      player.dispose();
    }
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
    var maxWidth = MediaQuery.of(context).size.width;
    var lineStrokeWidth = maxWidth * 38 / 100;

    return Scaffold(
      backgroundColor: colors.backgroundColor,
      appBar: buildCustomAppBar(
        context,
        titleText: widget.appBarTitleText,
        color: widget.appBarTitleTextColor,
        shouldShowNavigateUp: Navigator.canPop(context),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Flexible(
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: SingleChildScrollView(
                  physics: const ClampingScrollPhysics(),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: sizes.detailScreenHorizontalPaddingMedium,
                      right: sizes.detailScreenHorizontalPaddingMedium,
                      top: sizes.detailScreenHorizontalPaddingMedium,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Banner
                        Center(
                          child: Image.asset(
                            widget.bannerAssetName,
                            width: maxWidth,
                            fit: BoxFit.fitWidth,
                          ),
                        ),

                        const Space(size: 16.0),

                        // Illustration description
                        widget.illustrationDescription != null
                            ? ParagraphText(
                                text: widget.illustrationDescription!,
                              )
                            : const Center(),

                        widget.illustrationDescription != null
                            ? const Space(size: 26.0)
                            : const Center(),

                        // LineStroke
                        widget.illustrationDescription != null
                            ? Center(
                                child: LineStroke(
                                  width: lineStrokeWidth,
                                  height: 3.0,
                                  color: colors.greyColor,
                                ),
                              )
                            : const Center(),

                        const Space(size: 26.0),

                        widget.shouldShowAudio
                            ? Column(
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

                                  Align(
                                    child: AudioButton(
                                      isPlaying: _isPlaying,
                                      width: MediaQuery.of(context).size.width *
                                          0.18,
                                      onClicked: () {
                                        playOrPauseAudio();
                                      },
                                    ),
                                  ),

                                  const Space(
                                    size: sizes.paragraphNewLineLarge,
                                  ),
                                ],
                              )
                            : const Center(),

                        // Heading
                        MainHeadingText(
                          text: widget.headingText,
                        ),

                        const Space(size: 20.0),

                        // Content
                        SizedBox(
                          width: maxWidth,
                          child: widget.body,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
