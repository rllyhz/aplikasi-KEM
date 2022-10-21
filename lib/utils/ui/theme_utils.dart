import 'package:aplikasi_kem/utils/ui/color_utils.dart' as colors;
import 'package:aplikasi_kem/utils/ui/font_utils.dart' as text_styles;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData getCustomThemeData() {
  return ThemeData(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    fontFamily: text_styles.customFontFamilyName,
    colorScheme: colors.getCustomColorScheme(),
    textTheme: text_styles.getCustomTextTheme(),
  );
}

void setStatusBarColor(Color color) {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.light,
      statusBarColor: color,
    ),
  );
}
