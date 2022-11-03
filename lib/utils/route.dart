// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../views/screens/bottom_nav.dart';
import '../views/screens/sign_in.dart';
import '../views/screens/sign_up.dart';

class AppRoute {
  static route(BuildContext context) => <String, WidgetBuilder>{
        "/sign_in": (context) => SignInPage(),
        "/sign_up": (context) => const SignUpPage(),
        "/home": (context) => BottomNavPage(tab: TabItem.home),
      };
}
