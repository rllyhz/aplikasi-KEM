import 'package:aplikasi_kem/ui/widgets/custom_button.dart';
import 'package:aplikasi_kem/ui/widgets/highlight_text_box.dart';
import 'package:aplikasi_kem/ui/widgets/space.dart';
import 'package:aplikasi_kem/utils/ui/theme_utils.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_kem/utils/ui/color_utils.dart' as colors;
import 'package:aplikasi_kem/utils/values/sizes.dart' as sizes;

class ExerciseScaffold extends StatelessWidget {
  const ExerciseScaffold({
    super.key,
    required this.exerciseContents,
    required this.onActionButtonPressed,
  });

  final List<Widget> exerciseContents;
  final Function() onActionButtonPressed;

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: colors.backgroundColor,
      appBar: buildCustomAppBar(
        context,
        backgroundColor: colors.backgroundColor,
        color: colors.darkTextColor,
        shouldShowNavigateUp: Navigator.canPop(context),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: sizes.detailScreenHorizontalPaddingMedium,
            right: sizes.detailScreenHorizontalPaddingMedium,
            top: sizes.detailScreenHorizontalPaddingMedium,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Space(size: 24.0),
              // Timer
              Center(
                child: Text(
                  '00:00:00',
                  style: textTheme.headline2?.copyWith(
                    color: colors.darkTextColor,
                    fontSize: 40.0,
                  ),
                ),
              ),
              const Space(size: 24.0),

              Expanded(
                child: HighlightTextBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          physics: const ClampingScrollPhysics(),
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 24.0),
                            child: Column(
                              children: exerciseContents,
                            ),
                          ),
                        ),
                      ),

                      const Space(size: 24.0),

                      // Timer Controller Buttons
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          _buildCustomButton(
                              'Mulai', () {}, CustomButtonType.small),
                          _buildCustomButton(
                              'Reset', () {}, CustomButtonType.small),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              const Space(size: 24.0),

              // Action Button
              _buildCustomButton(
                'Soal',
                onActionButtonPressed,
                CustomButtonType.large,
              ),

              const Space(size: 24.0),
            ],
          ),
        ),
      ),
    );
  }

  CustomButton _buildCustomButton(
          String text, Function() onPressed, CustomButtonType type) =>
      CustomButton(
        text: text,
        backgroundColor: colors.blueColor,
        textColor: colors.whiteColor,
        onPressed: onPressed,
        type: type,
      );
}
