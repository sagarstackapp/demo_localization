import 'dart:async';

import 'package:demo_localization/pages/home/home_page.dart';
import 'package:demo_localization/generated/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

StreamController<bool> theme = StreamController();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Object>(
        initialData: true,
        stream: theme.stream,
        builder: (context, snapshot) {
          return MaterialApp(
            title: 'Flutter Localization Demo',
            debugShowCheckedModeBanner: false,
            home: Home(),
            localizationsDelegates: [
              S.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
            localeResolutionCallback: (locale, supportedLocales) {
              for (var localeLanguage in supportedLocales) {
                if (localeLanguage.languageCode == locale.languageCode &&
                    localeLanguage.countryCode == locale.countryCode) {
                  return localeLanguage;
                }
              }

              return supportedLocales.first;
            },
            theme: snapshot.data ? ThemeData.light() : ThemeData.dark(),
          );
        });
  }
}
