import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  static String route = '/landing';

  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Hello there!',
        style: Theme.of(context).textTheme.bodyText1?.copyWith(
              color: Colors.white,
            ),
      ),
    );
  }
}
