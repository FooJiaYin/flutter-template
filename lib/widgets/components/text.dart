import 'package:flutter/material.dart';
import 'package:flutter_template/generated/l10n.dart';

import 'package:flutter_template/theme/font.dart';
import 'package:flutter_template/utils/string.dart';


class ListItemText extends StatelessWidget {
  ListItemText({
    this.text = "",
    this.textStyle,
    this.bulletType = "•",
    this. bulletColor,
    Key? key
  }) : super(key: key) ;

  final String text;
  final TextStyle? textStyle;
  final String bulletType;
  final Color? bulletColor;

  @override
  Widget build(BuildContext context) {
    return 
      Text.rich(
        TextSpan(
          children: [
            TextSpan(text: "•  ", style: bulletColor != null ? ThemeFont.style(color: bulletColor) : null),
            TextSpan(text: text, style: textStyle),
          ],
        ),
      );
  }
}

class CopyText extends StatelessWidget {
  final String text;
  String? label;
  String? buttonLabel;

  CopyText({required this.text, this.label, this.buttonLabel}) {
    label ??= text;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SelectableText(label!),
        ElevatedButton(
          child: Text(buttonLabel ?? S.of(context).copy),
          onPressed: () {
            text.copyToClipboard();
          },
        )
      ],
    );
  }
}
