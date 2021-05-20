import 'package:flutter/material.dart';

import 'package:calculator/aboutme_page.dart';
import 'package:calculator/calculator_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        accentColor: Colors.teal,
        textTheme: TextTheme(
          subtitle1: TextStyle(
            fontSize: 18,
            color: Colors.teal,
            fontWeight: FontWeight.bold,
          ),
          subtitle2: TextStyle(
            fontSize: 14,
          ),
        ),
      ),
      routes: {
        CalculatorPage.routeName: (context) => CalculatorPage(),
        AboutMePage.routeName: (context) => AboutMePage(),
      },
    );
  }
}
