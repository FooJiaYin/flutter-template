import 'package:flutter/material.dart';

import 'package:flutter_template/generated/l10n.dart';
import 'package:flutter_template/models/account.dart';
import 'package:flutter_template/theme/theme.dart';
import 'package:flutter_template/utils/validation.dart';
import 'package:flutter_template/widgets/components/button.dart';
import 'package:flutter_template/widgets/components/scaffold_page.dart';

class SignInPage extends StatefulWidget {
  SignInPage({Key? key}) : super(key: key);

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
            onPressed: () => Navigator.pushNamedAndRemoveUntil(context, "/home", (_)=>false),
            text: S.of(context).sign_in,
          ),
        ]
      ),
    );
  }
}