import 'package:bazi/Screen/add_record_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '八字排盤',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xff448aff),
          centerTitle: false,
          elevation: 0.0,
        ),
        primaryColor: const Color(0xff448aff),
        scaffoldBackgroundColor: Colors.blue.shade50,
      ),
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
      supportedLocales: const [
        Locale.fromSubtags(
            languageCode: 'zh', scriptCode: 'Hant', countryCode: 'TW')
      ],
      home: AddRecordScreen.create(),
    );
  }
}
