import 'package:flutter/material.dart';

class LineStroke extends StatelessWidget {
  const LineStroke({
    super.key,
    required this.width,
    required this.color,
    this.height = 1.0,
  });

  final double width;
  final double height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(32.0),
      ),
    );
  }
}
