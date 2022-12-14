import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NextIconButton extends StatelessWidget {
  const NextIconButton({
    super.key,
    required this.backgroundColor,
    required this.iconColor,
    this.icon,
    this.onIconPressed,
    this.borderRadiusSize,
    this.padding,
  });

  final Color backgroundColor;
  final Color iconColor;
  final Widget? icon;
  final Function()? onIconPressed;
  final double? borderRadiusSize;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Center(
        child: SvgPicture.asset(
          'assets/icons/icon_arrow_right.svg',
          width: 32.0,
          height: 32.0,
          color: iconColor,
        ),
      ),
      onPressed: onIconPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(backgroundColor),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadiusSize ?? 32.0),
          ),
        ),
      ),
    );
  }
}
