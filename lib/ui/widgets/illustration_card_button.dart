import 'package:aplikasi_kem/ui/widgets/colored_card.dart';
import 'package:aplikasi_kem/ui/widgets/space.dart';
import 'package:aplikasi_kem/utils/values/sizes.dart' as sizes;
import 'package:aplikasi_kem/utils/ui/color_utils.dart' as colors;
import 'package:flutter/material.dart';

class IllustrationCardButton extends StatelessWidget {
  const IllustrationCardButton({
    super.key,
    required this.text,
    required this.illustrationPath,
    required this.backgroundColor,
    this.padding,
    this.borderRadiusSize,
    this.textColor,
    this.elevation,
    this.onPressed,
  });

  final String illustrationPath;
  final String text;
  final Color backgroundColor;
  final Color? textColor;
  final EdgeInsetsGeometry? padding;
  final double? borderRadiusSize;
  final double? elevation;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    var maxWidth = MediaQuery.of(context).size.width;
    var maxTextWidth = maxWidth * 23.5 / 100;

    return ColoredCard(
      backgroundColor: backgroundColor,
      padding: padding,
      borderRadiusSize: borderRadiusSize,
      elevation: elevation,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            illustrationPath,
            fit: BoxFit.fitWidth,
          ),
          const Space(size: 12.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: maxTextWidth,
                child: Text(
                  text,
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                        fontSize: sizes.textSizeMedium,
                        color: textColor,
                      ),
                ),
              ),
              IconButton(
                iconSize: 48.0,
                color: colors.whiteColor,
                onPressed: onPressed,
                icon: const Icon(Icons.arrow_circle_right),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
