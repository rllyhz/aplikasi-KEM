import 'package:flutter/material.dart';
import 'package:aplikasi_kem/utils/values/sizes.dart' as sizes;
import 'package:aplikasi_kem/utils/ui/color_utils.dart' as colors;

class MainHeadingText extends StatelessWidget {
  const MainHeadingText({
    super.key,
    required this.text,
    this.textAlign = TextAlign.justify,
  });

  final String text;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: Theme.of(context).textTheme.headline1?.copyWith(
            color: colors.darkTextColor,
            fontSize: sizes.textSizeLarge,
          ),
    );
  }
}
