import 'package:flutter/material.dart';

class ColoredCard extends StatelessWidget {
  const ColoredCard({
    super.key,
    required this.backgroundColor,
    this.padding,
    this.borderRadiusSize,
    this.child,
    this.elevation,
  });

  final Color backgroundColor;
  final EdgeInsetsGeometry? padding;
  final double? borderRadiusSize;
  final double? elevation;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadiusSize ?? 32.0),
      ),
      elevation: elevation,
      color: backgroundColor,
      child: Padding(
        padding: padding ?? const EdgeInsets.all(32.0),
        child: child,
      ),
    );
  }
}
