import 'package:flutter/material.dart';
import 'package:aplikasi_kem/utils/values/sizes.dart' as sizes;
import 'package:aplikasi_kem/utils/ui/color_utils.dart' as colors;

class ParagraphText extends StatelessWidget {
  const ParagraphText({
    super.key,
    required this.text,
    this.textAlign = TextAlign.justify,
    this.shouldShowIndentation = false,
    this.spaceCount = 2,
    this.fontStyle,
  });

  final String text;
  final TextAlign? textAlign;
  final FontStyle? fontStyle;
  final bool shouldShowIndentation;
  final int spaceCount;

  String _getIndentationText() {
    var singleSpace = '   ';
    if (spaceCount <= 1) return singleSpace;

    var expectedIndetationSpace = '';
    for (var i = 0; i < spaceCount; i++) {
      expectedIndetationSpace += singleSpace;
    }

    return expectedIndetationSpace;
  }

  @override
  Widget build(BuildContext context) {
    var resultText =
        shouldShowIndentation ? _getIndentationText() + text : text;

    return Text(
      resultText,
      textAlign: textAlign,
      style: Theme.of(context).textTheme.bodyText2?.copyWith(
            color: colors.darkTextColor,
            fontSize: sizes.textSizeMedium,
            height: sizes.textLineHeightParagraph,
            fontStyle: fontStyle ?? FontStyle.normal,
          ),
    );
  }
}
