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
        primarySwatch: Colors.blue,
      ),
      home: const ResultScreen(),
    );
  }
}