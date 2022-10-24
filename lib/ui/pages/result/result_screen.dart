import 'package:flutter/material.dart';
import 'package:aplikasi_kem/utils/ui/color_utils.dart' as colors;

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  static const String route = '/result';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.backgroundColor,
      body: Center(
        child: Text(
          'Result screen',
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
    );
  }
}
