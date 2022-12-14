import 'package:aplikasi_kem/utils/values/sizes.dart' as sizes;
import 'package:flutter/material.dart';

const customFontFamilyName = 'Inter';
const customFontFamily2Name = 'Good Times';

const headingTextStyle = TextStyle(
  fontSize: sizes.textSizeHeading,
  fontWeight: FontWeight.w700,
  fontFamily: customFontFamilyName,
);

const headline1TextStyle = TextStyle(
  fontSize: sizes.textSizeMedium,
  fontWeight: FontWeight.w700,
  fontFamily: customFontFamilyName,
);

const headline2TextStyle = TextStyle(
  fontSize: sizes.textSizeRegular,
  fontWeight: FontWeight.w600,
  fontFamily: customFontFamilyName,
);

const subtitle1TextStyle = TextStyle(
  fontSize: sizes.textSizeRegular,
  fontWeight: FontWeight.w500,
  fontFamily: customFontFamilyName,
);

const subtitle2TextStyle = TextStyle(
  fontSize: sizes.textSizeRegular,
  fontWeight: FontWeight.w600,
  fontFamily: customFontFamilyName,
);

const bodyText1TextStyle = TextStyle(
  fontSize: sizes.textSizeRegular,
  fontWeight: FontWeight.w500,
  fontFamily: customFontFamilyName,
);

const bodyText2TextStyle = TextStyle(
  fontSize: sizes.textSizeSmall,
  fontWeight: FontWeight.w400,
  fontFamily: customFontFamilyName,
);

const buttonTextStyle = TextStyle(
  fontSize: sizes.textSizeRegular,
  fontWeight: FontWeight.w500,
  fontFamily: customFontFamilyName,
);

TextTheme getCustomTextTheme() {
  return const TextTheme(
    headline1: headline1TextStyle,
    headline2: headline2TextStyle,
    subtitle1: subtitle1TextStyle,
    subtitle2: subtitle2TextStyle,
    bodyText1: bodyText1TextStyle,
    bodyText2: bodyText2TextStyle,
    button: buttonTextStyle,
  );
}

TextStyle getSplashScreenTextStyle({
  Color? color,
  FontWeight? fontWeight,
}) {
  return TextStyle(
    fontFamily: customFontFamily2Name,
    fontSize: sizes.textSizeSplashScreenTagline,
    color: color,
    fontWeight: fontWeight,
  );
}
