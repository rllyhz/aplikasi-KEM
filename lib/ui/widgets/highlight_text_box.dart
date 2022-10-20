import 'package:flutter/material.dart';
import 'package:aplikasi_kem/utils/ui/color_utils.dart' as colors;
import 'package:aplikasi_kem/utils/values/sizes.dart' as sizes;

class HighlightTextBox extends StatelessWidget {
  const HighlightTextBox(
      {super.key,
      this.backgroundColor,
      this.borderRadiusSize,
      this.padding,
      this.child});

  final Color? backgroundColor;
  final double? borderRadiusSize;
  final EdgeInsetsGeometry? padding;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ??
          const EdgeInsets.symmetric(
            vertical: sizes.highlightTextBoxPaddingMedium,
            horizontal: sizes.highlightTextBoxPaddingSmall,
          ),
      decoration: BoxDecoration(
        color: backgroundColor ?? colors.greyColor,
        borderRadius: BorderRadius.circular(borderRadiusSize ?? 24.0),
      ),
      child: child,
    );
  }
}
