import 'package:easy_localization/easy_localization.dart';
import 'package:ffd/Screen/HomeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    EasyLocalization(
      supportedLocales: [Locale('ru', 'US')],
      path: 'assets/localization', // <-- change patch to your
      fallbackLocale: Locale('ru'),
      child: MyApp()
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: tr("navbar.title"),
      home: HomeScreen(),
    );
  }
}
