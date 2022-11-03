import 'package:flutter/material.dart';

import '../../generated/l10n.dart';
import '../../models/account.dart';
import '../../theme/theme.dart';
import '../../utils/validation.dart';
import '../widgets/button.dart';
import '../widgets/scaffold_page.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final email = TextEditingController(text: "");
  final password = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            controller: email,
            onChanged: (value) => setState(() {}),
            decoration: InputDecoration(
              hintText: S.of(context).email,
              // hintStyle: TextStyle(color: ),
            ),
          ),
          Button(
            onPressed: () => Navigator.pushNamedAndRemoveUntil(context, "/home", (_) => false),
            text: S.of(context).sign_in,
          ),
        ],
      ),
    );
  }
}
