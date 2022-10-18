import 'package:flutter/material.dart';

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
  });

  final String text;
  final Color? textColor;
  final Color? backgroundColor;
  final double? fontSize;
  final double? borderRadiusSize;
  final EdgeInsetsGeometry? padding;
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
        elevation: MaterialStateProperty.all<double>(8.0),
      ),
      child: Padding(
        padding: padding ??
            const EdgeInsets.symmetric(
              vertical: 12.0,
              horizontal: 36.0,
            ),
        child: Text(
          text,
          style: Theme.of(context).textTheme.bodyText1?.copyWith(
                color: textColor,
                fontSize: fontSize ?? 18.0,
              ),
        ),
      ),
    );
  }
}
