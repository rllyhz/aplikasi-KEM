import 'package:aplikasi_kem/ui/widgets/space.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_kem/utils/values/sizes.dart' as sizes;
import 'package:aplikasi_kem/utils/ui/color_utils.dart' as colors;

enum SubHeadingSuffix {
  dot,
  parentheses,
}

class SubHeadingText extends StatelessWidget {
  const SubHeadingText({
    super.key,
    required this.text,
    this.isBold = true,
    this.isNumbering = false,
    this.numberingValue,
    this.numberingSuffix = SubHeadingSuffix.dot,
  });

  final String text;
  final bool isBold;
  final bool isNumbering;
  final String? numberingValue;
  final SubHeadingSuffix numberingSuffix;

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;

    var textStyle = isBold
        ? textTheme.headline2?.copyWith(
            color: colors.darkTextColor,
            fontSize: sizes.textSizeMedium,
            height: sizes.textLineHeightParagraph,
          )
        : textTheme.bodyText2?.copyWith(
            color: colors.darkTextColor,
            fontSize: sizes.textSizeMedium,
            height: sizes.textLineHeightParagraph,
          );

    if (isNumbering) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            _getFormattedHeadingText(),
            style: textStyle,
          ),
          const Space(size: 8.0, orientation: SpaceOrientation.vertical),
          Expanded(
            child: Text(
              text,
              style: textStyle,
            ),
          ),
        ],
      );
    }

    return Text(
      text,
      style: textStyle,
    );
  }

  String _getFormattedHeadingText() {
    if (numberingValue == null) {
      return '1${_getNumberingSuffix()}';
    } else {
      return numberingValue! + _getNumberingSuffix();
    }
  }

  String _getNumberingSuffix() {
    if (numberingSuffix == SubHeadingSuffix.parentheses) {
      return ')';
    } else {
      return '.';
    }
  }
}
