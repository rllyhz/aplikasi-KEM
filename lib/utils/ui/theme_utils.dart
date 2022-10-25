import 'package:aplikasi_kem/utils/ui/color_utils.dart' as colors;
import 'package:aplikasi_kem/utils/ui/font_utils.dart' as text_styles;
import 'package:aplikasi_kem/utils/values/sizes.dart' as sizes;
import 'package:aplikasi_kem/utils/routes.dart' as routes;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

ThemeData getCustomThemeData() {
  return ThemeData(
    useMaterial3: true,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    fontFamily: text_styles.customFontFamilyName,
    colorScheme: colors.getCustomColorScheme(),
    textTheme: text_styles.getCustomTextTheme(),
  );
}

PreferredSizeWidget buildCustomAppBar(
  BuildContext context, {
  String? titleText,
  Color? color,
  Color? backgroundColor,
  bool shouldShowNavigateUp = false,
  bool useElevation = true,
  Widget? leading,
  Color? statusBarColor,
  Brightness? statusBarBrightness,
  Brightness? statusBarIconBrightness,
  Function()? onNavigateUp,
}) =>
    AppBar(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: statusBarColor ?? colors.transparentColor,
        statusBarBrightness: statusBarBrightness,
        statusBarIconBrightness: statusBarIconBrightness,
      ),
      shape: !useElevation
          ? null
          : const Border(
              bottom: BorderSide(
                width: 2.0,
                color: colors.greyColor,
              ),
            ),
      backgroundColor: backgroundColor ?? colors.transparentColor,
      surfaceTintColor: colors.transparentColor,
      leading: !shouldShowNavigateUp
          ? null
          : IconButton(
              onPressed: onNavigateUp == null
                  ? () {
                      routes.navigateUp(context);
                    }
                  : () {
                      onNavigateUp();
                    },
              icon: leading ??
                  SvgPicture.asset(
                    'assets/icons/icon_navigate_up.svg',
                    theme: const SvgTheme(
                      fontSize: sizes.textSizeMedium,
                    ),
                    fit: BoxFit.cover,
                    color: color ?? colors.darkTextColor,
                  ),
            ),
      centerTitle: true,
      title: titleText == null
          ? null
          : Text(
              titleText,
              style: Theme.of(context).textTheme.headline2?.copyWith(
                    color: color ?? colors.darkTextColor,
                    fontSize: 20.0,
                  ),
            ),
    );

void setStatusBarColor({Color? color, Brightness? brightness}) {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: color ?? colors.transparentColor,
    statusBarBrightness: brightness ?? Brightness.light,
    statusBarIconBrightness: brightness ?? Brightness.light,
  ));
}
