import 'package:flutter/material.dart';
import 'package:aplikasi_kem/utils/ui/color_utils.dart' as colors;

class KEMIncreasementScreen extends StatelessWidget {
  const KEMIncreasementScreen({super.key});

  static const String route = '/kem-increasement';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.backgroundColor,
      body: Center(
        child: Text(
          'KEM Increasement screen',
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
    );
  }
}
