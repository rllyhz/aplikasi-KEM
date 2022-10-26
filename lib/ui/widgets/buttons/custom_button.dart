import 'package:flutter/material.dart';
import 'package:aplikasi_kem/utils/values/sizes.dart' as sizes;

enum CustomButtonType {
  small,
  medium,
  large,
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.textColor,
    this.backgroundColor,
    this.borderRadiusSize,
    this.padding,
    this.fontSize,
    this.type = CustomButtonType.medium,
    this.textAlign = TextAlign.start,
    this.fontStyle = FontStyle.normal,
    this.decoration = TextDecoration.none,
  });

  final String text;
  final Color? textColor;
  final Color? backgroundColor;
  final double? fontSize;
  final double? borderRadiusSize;
  final EdgeInsetsGeometry? padding;
  final CustomButtonType type;
  final TextAlign textAlign;
  final FontStyle fontStyle;
  final TextDecoration decoration;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: backgroundColor == null
            ? null
            : MaterialStateProperty.all<Color>(backgroundColor!),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadiusSize ?? 32.0),
          ),
        ),
        elevation: MaterialStateProperty.all<double>(4.0),
      ),
      child: Padding(
        padding: padding ?? _getPadding(),
        child: Text(
          text,
          style: _getStyle(context),
          textAlign: textAlign,
        ),
      ),
    );
  }

  TextStyle? _getStyle(BuildContext context) {
    if (type == CustomButtonType.small) {
      return Theme.of(context).textTheme.bodyText2?.copyWith(
            color: textColor,
            fontSize: fontSize ?? _getFontSize(),
            fontStyle: fontStyle,
            decoration: decoration,
          );
    } else if (type == CustomButtonType.medium) {
      return Theme.of(context).textTheme.bodyText1?.copyWith(
            color: textColor,
            fontSize: fontSize ?? _getFontSize(),
            fontStyle: fontStyle,
            decoration: decoration,
          );
    } else {
      return Theme.of(context).textTheme.bodyText1?.copyWith(
            color: textColor,
            fontSize: fontSize ?? _getFontSize(),
            fontStyle: fontStyle,
            decoration: decoration,
          );
    }
  }

  double _getFontSize() {
    if (type == CustomButtonType.small) {
      return sizes.textSizeSmall;
    } else if (type == CustomButtonType.medium) {
      return sizes.textSizeMedium;
    } else {
      return 22.0;
    }
  }

  EdgeInsetsGeometry _getPadding() {
    if (type == CustomButtonType.small) {
      return const EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 18.0,
      );
    } else if (type == CustomButtonType.medium) {
      return const EdgeInsets.symmetric(
        vertical: 12.0,
        horizontal: 36.0,
      );
    } else {
      return const EdgeInsets.symmetric(
        vertical: 14.0,
        horizontal: 56.0,
      );
    }
  }
}
