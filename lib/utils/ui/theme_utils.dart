import 'package:aplikasi_kem/utils/ui/color_utils.dart';
import 'package:aplikasi_kem/utils/ui/font_utils.dart';
import 'package:flutter/material.dart';

ThemeData getCustomThemeData() {
  return ThemeData(
    fontFamily: customFontFamilyName,
    colorScheme: getCustomColorScheme(),
    textTheme: getCustomTextTheme(),
  );
}
