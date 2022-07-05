import 'package:flutter/material.dart';

import 'package:flutter_template/generated/l10n.dart';
import 'package:flutter_template/theme/theme.dart';
import 'package:flutter_template/widgets/components/button.dart';
import 'package:flutter_template/widgets/components/scaffold_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, "/sign_in"),
            child: Text(S.of(context).sign_in),
          ),
          const SizedBox(height: Dimensions.screenPadding),
          Button(
            onPressed: () => Navigator.pushNamed(context, "/sign_up"),
            text: S.of(context).sign_up,
          ),
        ]
      ),
    );
  }
}