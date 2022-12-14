import 'package:aplikasi_kem/ui/widgets/surfaces/colored_card.dart';
import 'package:aplikasi_kem/ui/widgets/buttons/next_icon_button.dart';
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
    this.onIconPressed,
    this.maxIconButtonWidthInPercentage = 10.5,
    this.maxTextWidthInPercentage = 25.5,
  });

  final String illustrationPath;
  final String text;
  final Color backgroundColor;
  final Color? textColor;
  final EdgeInsetsGeometry? padding;
  final double? borderRadiusSize;
  final double? elevation;
  final Function()? onIconPressed;
  final double maxTextWidthInPercentage;
  final double maxIconButtonWidthInPercentage;

  @override
  Widget build(BuildContext context) {
    var maxWidth = MediaQuery.of(context).size.width;
    var maxTextWidth = maxWidth * maxTextWidthInPercentage / 100;
    var maxIconButtonWidth = maxWidth * maxIconButtonWidthInPercentage / 100;

    return ColoredCard(
      backgroundColor: backgroundColor,
      padding: padding,
      borderRadiusSize: borderRadiusSize,
      blurRadius: 0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            flex: 2,
            child: Image.asset(
              illustrationPath,
              fit: BoxFit.fitWidth,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: SizedBox(
              width: maxWidth,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: maxTextWidth,
                    child: Text(
                      text,
                      style: Theme.of(context).textTheme.headline2?.copyWith(
                            fontSize: sizes.textSizeMedium,
                            color: textColor,
                          ),
                    ),
                  ),
                  SizedBox(
                    width: maxIconButtonWidth,
                    height: maxIconButtonWidth,
                    child: NextIconButton(
                      backgroundColor: colors.whiteColor,
                      iconColor: backgroundColor,
                      onIconPressed: onIconPressed,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
