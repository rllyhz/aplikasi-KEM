import 'package:flutter/material.dart';
import 'package:aplikasi_kem/utils/ui/color_utils.dart' as colors;

class ColoredCard extends StatelessWidget {
  const ColoredCard({
    super.key,
    required this.backgroundColor,
    this.padding,
    this.borderRadiusSize,
    this.child,
    this.blurRadius = 0,
  });

  final Color backgroundColor;
  final EdgeInsetsGeometry? padding;
  final double? borderRadiusSize;
  final double blurRadius;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadiusSize ?? 32.0),
        boxShadow: [
          BoxShadow(
            color: colors.boxShadowColor,
            offset: const Offset(0, 1.0),
            spreadRadius: (blurRadius == 0) ? 0 : 2.0,
            blurRadius: blurRadius,
          ),
        ],
        color: backgroundColor,
      ),
      child: Padding(
        padding: padding ?? const EdgeInsets.all(32.0),
        child: child,
      ),
    );
  }
}
