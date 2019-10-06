import 'package:flutter/material.dart';
import 'package:laboral_app/screens/entrance.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:laboral_app/localization/AppLocalizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: EntrancePage(title: 'Flutter Demo Home Page'),
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en'),
        const Locale('ru')
      ],
    );
  }
}