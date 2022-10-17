import 'package:flutter/material.dart';

const blueColor = Color(0xFF115FC4);
const yellowColor = Color(0xFFFFC700);
const backgroundColor = Color(0xFFF5F5F5);
const greyTextColor = Color.fromRGBO(28, 28, 255, 0.11);
const whiteColor = Color(0xFFFFFFFF);
const errorColor = Colors.redAccent;
const headingTextColor = Color(0xFF1C1C1C);
const darkTextColor = Color(0xFF1C1C1C);

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
