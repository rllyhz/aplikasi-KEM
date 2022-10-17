import 'package:flutter/material.dart';

const backgroundColor = Color(0xFFF5F5F5);
const greyColor = Color.fromRGBO(28, 28, 255, 0.11);
const whiteColor = Color(0xFFFFFFFF);
const errorColor = Colors.redAccent;
const headingTextColor = Color(0xFF1C1C1C);
const darkTextColor = Color(0xFF1C1C1C);

const silverColor = Color(0xFF6F6F6F);
const blueColor = Color(0xFF115FC4);
const yellowColor = Color(0xFFFFC700);
const redColor = Color(0xFFE94A47);
const orangeColor = Color(0xFFEE942A);
const limeColor = Color(0xFF00AFAF);
const darkPurpleColor = Color(0xFF1D225F);
const lightBlueColor = Color(0xFF709CDF);
const greenColor = Color(0xFF55B95F);

ColorScheme getCustomColorScheme() {
  return const ColorScheme.light(
    primary: blueColor,
    onPrimary: whiteColor,
    secondary: yellowColor,
    onSecondary: whiteColor,
    background: backgroundColor,
    onBackground: whiteColor,
    error: errorColor,
    onError: whiteColor,
  );
}
