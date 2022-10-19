import 'package:flutter/material.dart';
import 'package:aplikasi_kem/utils/ui/color_utils.dart' as colors;
import 'package:aplikasi_kem/utils/values/sizes.dart' as sizes;
import 'package:aplikasi_kem/utils/routes.dart' as routes;
import 'package:flutter_svg/flutter_svg.dart';

class SimpleAppBar extends StatelessWidget {
  const SimpleAppBar({
    super.key,
    required this.titleText,
    required this.color,
    this.enableNavigateUp,
    this.backgroundColor,
    this.leading,
  });

  final String titleText;
  final Color color;
  final Color? backgroundColor;
  final bool? enableNavigateUp;
  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    var shouldShowNavigateUp = false;
    if (enableNavigateUp != null) {
      shouldShowNavigateUp = enableNavigateUp!;
    }

    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 2.0,
            color: colors.greyColor,
          ),
        ),
      ),
      width: MediaQuery.of(context).size.width,
      height: 62.0,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: !shouldShowNavigateUp
                ? null
                : IconButton(
                    onPressed: () {
                      routes.navigateUp(context);
                    },
                    icon: leading ??
                        SvgPicture.asset(
                          'assets/icons/icon_navigate_up.svg',
                          theme: const SvgTheme(
                            fontSize: sizes.textSizeMedium,
                          ),
                          fit: BoxFit.cover,
                          color: colors.darkTextColor,
                        ),
                  ),
          ),
          Align(
            alignment: Alignment.center,
            child: Center(
              child: Text(
                titleText,
                style: Theme.of(context).textTheme.headline2?.copyWith(
                      color: colors.darkTextColor,
                      fontSize: sizes.textSizeMedium,
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
