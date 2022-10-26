import 'package:aplikasi_kem/ui/widgets/space.dart';
import 'package:aplikasi_kem/utils/ui/text_numbering_helpers.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_kem/utils/values/sizes.dart' as sizes;
import 'package:aplikasi_kem/utils/ui/color_utils.dart' as colors;

class ParagraphList extends StatelessWidget {
  const ParagraphList({
    super.key,
    required this.list,
    this.textAlign = TextAlign.justify,
    this.numberingType = NumberingType.numeric,
    this.numberingSuffix = NumberingSuffix.dot,
    this.numberingWidthInPercentage = 0.05,
    this.padding,
  });

  final List<String> list;
  final TextAlign textAlign;
  final NumberingType numberingType;
  final NumberingSuffix numberingSuffix;
  final double numberingWidthInPercentage;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    var maxWidth = MediaQuery.of(context).size.width;
    double numberingMaxWidth = 0.0;

    if (numberingWidthInPercentage <= 0.05) {
      numberingMaxWidth = maxWidth * 0.05;
    } else {
      numberingMaxWidth = maxWidth * numberingWidthInPercentage;
    }

    var textStyle = Theme.of(context).textTheme.bodyText2?.copyWith(
          color: colors.darkTextColor,
          fontSize: sizes.textSizeMedium,
          height: sizes.textLineHeightParagraph,
        );

    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: list.length,
      itemBuilder: (ctx, index) => Padding(
        padding: padding ?? const EdgeInsets.all(0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: numberingMaxWidth,
              child: Text(
                _getFormattedNumberingText(index),
                style: textStyle,
              ),
            ),
            const Space(size: 8.0, orientation: SpaceOrientation.vertical),
            Expanded(
              child: Text(
                list[index],
                style: textStyle,
                textAlign: textAlign,
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _getFormattedNumberingText(int index) =>
      getNumberingByIndex(index, numberingType) +
      getNumberingSuffixOf(numberingSuffix);
}
