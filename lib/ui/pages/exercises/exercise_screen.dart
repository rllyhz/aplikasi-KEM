import 'package:flutter/material.dart';
import 'package:aplikasi_kem/utils/ui/color_utils.dart' as colors;

class ExerciseScreen extends StatelessWidget {
  const ExerciseScreen({super.key});

  static const String route = '/exercise';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.backgroundColor,
      body: Center(
        child: Text(
          'Exercise screen',
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
    );
  }
}
