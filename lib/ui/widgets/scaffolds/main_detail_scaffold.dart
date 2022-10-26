import 'package:aplikasi_kem/ui/widgets/utils/space.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_kem/utils/ui/theme_utils.dart';
import 'package:aplikasi_kem/utils/ui/color_utils.dart' as colors;
import 'package:aplikasi_kem/utils/values/sizes.dart' as sizes;

class MainDetailScaffold extends StatelessWidget {
  const MainDetailScaffold({
    super.key,
    this.appBarTitleText,
    required this.appBarTitleTextColor,
    this.illustrationAssetName,
    this.illustrationWidthInPercentage = 0.8,
    this.taglineWidthInPercentage = 0.8,
    this.body,
    this.tagline,
  });

  final String? appBarTitleText;
  final Color appBarTitleTextColor;
  final String? illustrationAssetName;
  final double illustrationWidthInPercentage;
  final String? tagline;
  final double taglineWidthInPercentage;
  final Widget? body;

  @override
  Widget build(BuildContext context) {
    var maxWidth = MediaQuery.of(context).size.width;
    var illustrationWidth = maxWidth * illustrationWidthInPercentage;
    var taglineMaxWidth = maxWidth * taglineWidthInPercentage;

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
                width: MediaQuery.of(context).size.width,
                child: SingleChildScrollView(
                  physics: const ClampingScrollPhysics(),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: sizes.detailScreenVerticalPaddingSmall,
                      bottom: sizes.detailScreenVerticalPaddingMedium,
                      left: sizes.detailScreenHorizontalPaddingMedium,
                      right: sizes.detailScreenHorizontalPaddingMedium,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Illustration
                        Center(
                          child: illustrationAssetName == null
                              ? null
                              : Image.asset(
                                  illustrationAssetName!,
                                  width: illustrationWidth,
                                  fit: BoxFit.fitWidth,
                                ),
                        ),

                        const Space(size: 18.0),

                        // Tagline
                        Center(
                          child: tagline == null
                              ? null
                              : SizedBox(
                                  width: taglineMaxWidth,
                                  child: Text(
                                    tagline!,
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1
                                        ?.copyWith(
                                          color: colors.silverColor,
                                          fontSize: sizes.textSizeRegular,
                                        ),
                                  ),
                                ),
                        ),

                        const Space(size: 46.0),

                        SizedBox(
                          width: maxWidth,
                          child: body,
                        )
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
