import 'package:flutter/material.dart';

import '../../theme/theme.dart';

class Button extends StatelessWidget {
  const Button({
    Key? key,
    this.text = "",
    this.width,
    this.textStyle,
    this.backgroundColor,
    this.borderColor,
    this.disabled = false,
    this.onPressed,
    this.onLongPress,
  }) : super(key: key);

  final String text;
  final TextStyle? textStyle;
  final Color? backgroundColor;
  final Color? borderColor;
  final double? width;
  final bool disabled;
  final dynamic onPressed;
  final dynamic onLongPress;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: disabled ? null : onPressed,
      onLongPress: disabled ? null : onLongPress,
      style: ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(Dimensions.buttonPadding),
        // minimumSize: width != null ? MaterialStateProperty.all<Size>(Size(width!, 0)) : null,
        shadowColor: MaterialStateProperty.all<Color>(Colors.transparent),
        // backgroundColor: onPressed == null || disabled
        //   ? MaterialStateProperty.all<Color>(Colors.grey)
        //   : backgroundColor != null
        //     ? MaterialStateProperty.all<Color>(backgroundColor!)
        //     : null,
      ),
      child: Text(text, style: textStyle),
    );
  }
}
