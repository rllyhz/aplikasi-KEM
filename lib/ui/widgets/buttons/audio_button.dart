import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AudioButton extends StatelessWidget {
  const AudioButton(
      {super.key,
      required this.isPlaying,
      required this.width,
      this.onClicked});

  final bool isPlaying;
  final double width;
  final Function()? onClicked;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClicked,
      child: SvgPicture.asset(
        isPlaying
            ? "assets/icons/icon_pause.svg"
            : "assets/icons/icon_play.svg",
        width: width,
      ),
    );
  }
}
