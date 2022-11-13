import 'dart:async';

import 'package:aplikasi_kem/ui/widgets/buttons/custom_button.dart';
import 'package:aplikasi_kem/ui/widgets/surfaces/highlight_text_box.dart';
import 'package:aplikasi_kem/ui/widgets/utils/space.dart';
import 'package:aplikasi_kem/utils/ui/text_numbering_helpers.dart';
import 'package:aplikasi_kem/utils/ui/theme_utils.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_kem/utils/ui/color_utils.dart' as colors;
import 'package:aplikasi_kem/utils/values/sizes.dart' as sizes;
import 'package:aplikasi_kem/utils/routes.dart' as routes;

class ExerciseScaffold extends StatefulWidget {
  const ExerciseScaffold({
    super.key,
    required this.exerciseContents,
    required this.onActionButtonPressed,
  });

  final List<Widget> exerciseContents;
  final Function() onActionButtonPressed;

  @override
  State<ExerciseScaffold> createState() => _ExerciseScaffoldState();
}

class _ExerciseScaffoldState extends State<ExerciseScaffold> {
  int _counterInSeconds = 0;
  bool _doesTimerStart = false;
  bool _doesTimerFinish = true;
  bool _shouldShowAlert = false;

  Timer? _timer;

  void _startTimer() {
    setState(() {
      _shouldShowAlert = true;
      _doesTimerStart = true;
      _doesTimerFinish = false;
    });

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _counterInSeconds += 1;
      });
    });
  }

  // void _pauseTimer() {
  //   _timer?.cancel();
  //   _timer = null;

  //   setState(() {
  //     _doesTimerStart = false;
  //   });
  // }

  void _finishTimer() {
    _timer?.cancel();
    _timer = null;

    setState(() {
      _doesTimerFinish = true;
      _shouldShowAlert = false;
    });
  }

  // void _resetTimer() {
  //   _timer?.cancel();
  //   _timer = null;

  //   setState(() {
  //     _counterInSeconds = 0;
  //     _doesTimerStart = false;
  //   });
  // }

  Future<bool> _onWillPop() async {
    if (_shouldShowAlert) _showConfirmDialog(context);
    return !_shouldShowAlert;
  }

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;

    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        backgroundColor: colors.backgroundColor,
        appBar: buildCustomAppBar(
          context,
          backgroundColor: colors.backgroundColor,
          color: colors.darkTextColor,
          shouldShowNavigateUp: Navigator.canPop(context),
          onNavigateUp: () {
            if (_shouldShowAlert) {
              _showConfirmDialog(context);
            } else {
              routes.navigateUp(context);
            }
          },
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
                    getTimerStringOf(_counterInSeconds),
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
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: widget.exerciseContents,
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
                            _buildCustomButton('Mulai', () {
                              if (!_doesTimerStart) {
                                _startTimer();
                              }
                            }, CustomButtonType.small),
                            _buildCustomButton('Selesai', () {
                              if (!_doesTimerFinish) {
                                _finishTimer();
                              }
                            }, CustomButtonType.small),
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
                  widget.onActionButtonPressed,
                  CustomButtonType.large,
                ),

                const Space(size: 24.0),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showConfirmDialog(BuildContext context) async {
    var textTheme = Theme.of(context).textTheme;
    await showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text('Timer Sedang Berjalan',
            style: textTheme.headline1?.copyWith(
              color: colors.darkTextColor,
              fontSize: sizes.textSizeLarge,
            )),
        icon: const Icon(Icons.warning_rounded, size: 46.0),
        iconColor: colors.greyColor,
        content: Padding(
          padding: const EdgeInsets.only(bottom: 24.0),
          child: Text('Apakah anda yakin ingin kembali?',
              style: textTheme.bodyText2?.copyWith(
                color: colors.darkTextColor,
                fontSize: sizes.textSizeRegular,
              )),
        ),
        actions: [
          _buildCustomButton('Iya', () {
            _timer?.cancel();
            _timer = null;
            routes.navigateUp(context);
            routes.navigateUp(context);
          }, CustomButtonType.small, primary: false),
          _buildCustomButton('Batal', () => routes.navigateUp(context),
              CustomButtonType.small),
        ],
      ),
    );
  }

  CustomButton _buildCustomButton(
          String text, Function() onPressed, CustomButtonType type,
          {bool primary = true}) =>
      CustomButton(
        text: text,
        backgroundColor: primary ? colors.blueColor : colors.backgroundColor,
        textColor: primary ? colors.whiteColor : colors.blueColor,
        onPressed: onPressed,
        type: type,
      );
}
