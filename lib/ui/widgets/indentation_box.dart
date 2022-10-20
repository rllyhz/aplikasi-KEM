import 'package:flutter/material.dart';

class IndentationBox extends StatelessWidget {
  const IndentationBox({super.key, required this.size, required this.children});

  final double size;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: size * 4),
      child: Column(
        children: children,
      ),
    );
  }
}
