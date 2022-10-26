import 'package:aplikasi_kem/ui/widgets/utils/line_stroke.dart';
import 'package:aplikasi_kem/ui/widgets/texts/main_heading_text.dart';
import 'package:aplikasi_kem/ui/widgets/texts/paragraph_text.dart';
import 'package:aplikasi_kem/ui/widgets/utils/space.dart';
import 'package:aplikasi_kem/utils/ui/theme_utils.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_kem/utils/ui/color_utils.dart' as colors;
import 'package:aplikasi_kem/utils/values/sizes.dart' as sizes;

class BannerScaffold extends StatelessWidget {
  const BannerScaffold({
    super.key,
    required this.bannerAssetName,
    required this.appBarTitleTextColor,
    required this.headingText,
    this.illustrationDescription,
    this.body,
    this.appBarTitleText,
  });

  final String? appBarTitleText;
  final Color appBarTitleTextColor;
  final String bannerAssetName;
  final String? illustrationDescription;
  final String headingText;
  final Widget? body;

  @override
  Widget build(BuildContext context) {
    var maxWidth = MediaQuery.of(context).size.width;
    var lineStrokeWidth = maxWidth * 38 / 100;

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
                      left: sizes.detailScreenHorizontalPaddingMedium,
                      right: sizes.detailScreenHorizontalPaddingMedium,
                      top: sizes.detailScreenHorizontalPaddingMedium,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Banner
                        Center(
                          child: Image.asset(
                            bannerAssetName,
                            width: maxWidth,
                            fit: BoxFit.fitWidth,
                          ),
                        ),

                        const Space(size: 16.0),

                        // Illustration description
                        illustrationDescription != null
                            ? ParagraphText(
                                text: illustrationDescription!,
                              )
                            : const Center(),

                        illustrationDescription != null
                            ? const Space(size: 26.0)
                            : const Center(),

                        // LineStroke
                        illustrationDescription != null
                            ? Center(
                                child: LineStroke(
                                  width: lineStrokeWidth,
                                  height: 3.0,
                                  color: colors.greyColor,
                                ),
                              )
                            : const Center(),

                        const Space(size: 26.0),

                        // Heading
                        MainHeadingText(
                          text: headingText,
                        ),

                        const Space(size: 20.0),

                        // Content
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
