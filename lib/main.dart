import 'package:bazi/Screen/result_screen.dart';
import 'package:flutter/material.dart';

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
      home: ResultScreen(birthDay: DateTime(1998, 10, 19, 21)),
    );
  }
}
