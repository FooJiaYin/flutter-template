import 'package:flutter/material.dart';

import '../../theme/theme.dart';

class ScaffoldPage extends StatelessWidget {
  const ScaffoldPage({
    Key? key,
    this.child,
    this.appBar,
    this.padding,
    this.backgroundColor,
    this.alignment = Alignment.topCenter,
  }) : super(key: key);

  final Widget? child;
  final PreferredSizeWidget? appBar;
  final Color? backgroundColor;
  final EdgeInsets? padding;
  final Alignment alignment;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      backgroundColor: backgroundColor,
      body: Align(
        alignment: alignment,
        child: SingleChildScrollView(
          child: Padding(
            padding: padding ?? const EdgeInsets.all(Dimensions.screenPadding),
            child: child,
          ),
        ),
      ),
    );
  }
}
