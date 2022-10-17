import 'package:flutter/material.dart';

enum SpaceOrientation {
  horizontal,
  vertical,
}

class Space extends StatelessWidget {
  final double size;
  final SpaceOrientation orientation;

  const Space({
    super.key,
    required this.size,
    this.orientation = SpaceOrientation.horizontal,
  });

  @override
  Widget build(BuildContext context) {
    if (orientation == SpaceOrientation.vertical) {
      return SizedBox(
        width: size,
      );
    } else {
      return SizedBox(
        height: size,
      );
    }
  }
}
