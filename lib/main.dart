import 'package:flutter/material.dart';
import 'package:tasweeh1/screens/one_tap_tasweeh.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.teal[900],
        scaffoldBackgroundColor: Color(0xFF98DDCA),
      ),
      home: OneTapTasweeh(),
    );
  }
}
