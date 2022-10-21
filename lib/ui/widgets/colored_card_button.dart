import 'package:aplikasi_kem/ui/widgets/colored_card.dart';
import 'package:aplikasi_kem/ui/widgets/next_icon_button.dart';
import 'package:aplikasi_kem/utils/ui/color_utils.dart' as colors;
import 'package:flutter/material.dart';

class ColoredCardButton extends StatelessWidget {
  const ColoredCardButton({
    super.key,
    required this.backgroundColor,
    required this.textColor,
    required this.label,
    this.child,
    this.onIconPressed,
  });

  final Color backgroundColor;
  final Color textColor;
  final String label;
  final Widget? child;
  final Function()? onIconPressed;

  @override
  Widget build(BuildContext context) {
    return ColoredCard(
      borderRadiusSize: 82.0,
      padding: const EdgeInsets.only(
          top: 12.0, bottom: 12.0, left: 24.0, right: 12.0),
      backgroundColor: backgroundColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            label,
            style: Theme.of(context).textTheme.bodyText1?.copyWith(
                  color: textColor,
                ),
          ),
          NextIconButton(
            onIconPressed: onIconPressed,
            backgroundColor: colors.whiteColor,
            iconColor: backgroundColor,
          ),
        ],
      ),
    );
  }
}
