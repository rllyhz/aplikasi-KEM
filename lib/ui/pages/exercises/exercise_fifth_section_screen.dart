import 'package:aplikasi_kem/ui/widgets/paragraph_text.dart';
import 'package:aplikasi_kem/ui/widgets/scaffolds/exercise_scaffold.dart';
import 'package:flutter/material.dart';

class ExerciseFifthSectionScreen extends StatelessWidget {
  const ExerciseFifthSectionScreen({super.key});

  static const String route = '/exercise-fifth-section';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ExerciseScaffold(
        onActionButtonPressed: () {},
        exerciseContents: const [
          ParagraphText(
            text:
                'Wayang adalah seni pertunjukan yang telah ditetapkan sebagai warisan budaya asli Indonesia. UNESCO, lembaga yang mengurusi kebudayaan dari PBB, pada 7 November 2003 menetapkan wayang sebagai pertunjukan bayangan boneka tersohor berasal dari Indonesia. Wayang merupakan warisan mahakarya dunia yang tidak ternilai dalam seni bertutur (Masterpiece of Oral and Intangible Heritage of Humanity).',
          ),
        ],
      ),
    );
  }
}
