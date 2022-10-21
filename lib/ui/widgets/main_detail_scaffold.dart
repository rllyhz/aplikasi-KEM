import 'package:aplikasi_kem/ui/widgets/space.dart';
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
    this.body,
    this.tagline,
  });

  final String? appBarTitleText;
  final Color appBarTitleTextColor;
  final String? illustrationAssetName;
  final String? tagline;
  final Widget? body;

  @override
  Widget build(BuildContext context) {
    var maxWidth = MediaQuery.of(context).size.width;
    var illustrationWidth = maxWidth * 80 / 100;
    var taglineMaxWidth = maxWidth * 75 / 100;

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

                        const Space(size: 8.0),

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

                        const Space(size: 32.0),

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
