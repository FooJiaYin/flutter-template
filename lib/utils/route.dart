// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../widgets/screens/bottom_nav.dart';
import '../widgets/screens/sign_in.dart';
import '../widgets/screens/sign_up.dart';

class AppRoute {
  static route(BuildContext context) => <String, WidgetBuilder>{
        "/sign_in": (context) => SignInPage(),
        "/sign_up": (context) => const SignUpPage(),
        "/home": (context) => BottomNavPage(tab: TabItem.home),
      };
}
