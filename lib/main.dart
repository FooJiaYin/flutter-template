import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:flutter_template/services/api.dart';
import 'package:flutter_template/services/fake_data.dart';
import 'package:flutter_template/utils/config.dart';
import 'package:flutter_template/utils/route.dart';
import 'package:flutter_template/theme/theme.dart';
import 'package:flutter_template/widgets/screens/bottom_nav.dart';
import 'package:flutter_template/widgets/screens/welcome.dart';
import 'generated/l10n.dart';

void main() async {
  await FakeData.init();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  AppConfig config = AppConfig();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConfig.title,
      home: app(context),
      routes: AppRoute.route(context),
      themeMode: ThemeMode.light,
      theme: CustomTheme.defaultTheme,
      darkTheme: CustomTheme.darkTheme,
      locale: const Locale.fromSubtags(languageCode: 'zh_Hant_TW'),
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
    );
  }

  Widget app(BuildContext context) {
    return StreamBuilder<bool>(
      stream: API.isAuthenticated(),
      builder: (context, AsyncSnapshot<bool> isAuthenticated) {
        final auth = isAuthenticated.hasData ? (isAuthenticated.data ?? false) : false;
        return auth ? BottomNavPage() : const WelcomePage();
      },
    );
  }

  @override
  void didChangeDependencies() async {
    // always use zh_Hant_TW now.
    setState(() => config.locale = const Locale.fromSubtags(languageCode: 'zh_Hant_TW'));
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

}