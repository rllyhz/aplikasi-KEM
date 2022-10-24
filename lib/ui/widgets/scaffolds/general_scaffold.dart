import 'package:aplikasi_kem/ui/widgets/space.dart';
import 'package:aplikasi_kem/utils/ui/theme_utils.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_kem/utils/ui/color_utils.dart' as colors;
import 'package:aplikasi_kem/utils/values/sizes.dart' as sizes;

class GeneralScaffold extends StatelessWidget {
  const GeneralScaffold({
    super.key,
    this.appBarTitleText,
    required this.appBarTitleTextColor,
    required this.illustrationAssetName,
    this.body,
  });

  final String? appBarTitleText;
  final Color appBarTitleTextColor;
  final String illustrationAssetName;
  final Widget? body;

  @override
  Widget build(BuildContext context) {
    var maxWidth = MediaQuery.of(context).size.width;
    var illustrationWidth = maxWidth * 0.85;

    return Scaffold(
      backgroundColor: colors.backgroundColor,
      appBar: buildCustomAppBar(
        context,
        titleText: appBarTitleText,
        color: appBarTitleTextColor,
        shouldShowNavigateUp: Navigator.canPop(context),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Flexible(
              child: SizedBox(
                width: maxWidth,
                child: SingleChildScrollView(
                  physics: const ClampingScrollPhysics(),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: sizes.detailScreenHorizontalPaddingMedium,
                      right: sizes.detailScreenHorizontalPaddingMedium,
                      top: sizes.detailScreenHorizontalPaddingMedium,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // illustration
                        Center(
                          child: Image.asset(
                            illustrationAssetName,
                            width: illustrationWidth,
                          ),
                        ),

                        const Space(size: 16.0),

                        // Content
                        SizedBox(
                          width: maxWidth,
                          child: body,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
