import 'package:flutter/material.dart';

import 'package:flutter_template/theme/theme.dart';

class CardContainer extends StatelessWidget {
  CardContainer({
    Key? key,
    required this.child,
    this.width = double.infinity,
    this.backgroundColor = Colors.white,
    this.borderRadius = Dimensions.cardRadius,
    this.padding = const EdgeInsets.all(Dimensions.containerPadding),
    this.margin = const EdgeInsets.only(bottom: Dimensions.itemMargin),
    this.shadows,
    this.onTap,
    this.onLongPress
  }) : super(key: key);
  final Widget child;
  final double width;
  final Color backgroundColor;
  final double borderRadius;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;
  final List<BoxShadow>? shadows;
  void Function()? onTap;
  void Function()? onLongPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      onLongPress: onLongPress,
      child: Container(
        width: width,
        margin: margin,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
          boxShadow: shadows,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(borderRadius),
          child: Padding(
            padding: padding,
            child: child,
          ),
        ),
      )
    );
  }
}