import 'package:aplikasi_kem/ui/widgets/texts/main_heading_text.dart';
import 'package:aplikasi_kem/ui/widgets/texts/paragraph_text.dart';
import 'package:aplikasi_kem/ui/widgets/utils/space.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_kem/utils/values/sizes.dart' as sizes;

List<Widget> generateExerciseUI(
        String title, int wordsCount, List<Widget> paragraphList) =>
    [
      // Title
      Center(
        child: MainHeadingText(
          text: title,
          textAlign: TextAlign.center,
        ),
      ),
      const Space(size: 8.0),
      Center(
        child: ParagraphText(
          text: 'Jumlah kata: $wordsCount',
          textAlign: TextAlign.center,
        ),
      ),
      const Space(size: sizes.paragraphNewLineLarge),

      // Content
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: paragraphList,
      )
    ];

ParagraphText _buildParagraph(String text, bool showIndentation, bool italic) =>
    ParagraphText(
      text: text,
      shouldShowIndentation: showIndentation,
      spaceCount: showIndentation ? 3 : 0,
      fontStyle: italic ? FontStyle.italic : null,
    );

ParagraphText buildNormalParagraph(String text, {bool italic = false}) =>
    _buildParagraph(text, true, italic);
ParagraphText buildNoIndentParagraph(String text, {bool italic = false}) =>
    _buildParagraph(text, false, italic);
