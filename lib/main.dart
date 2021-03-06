// import 'package:designs_pro/pages/animations_page.dart';
// import 'package:designs_pro/pages/header_page.dart';
// import 'package:designs_pro/pages/slideshow_page.dart';
// import 'package:designs_pro/pages/pinterest_page.dart';
import 'package:designs_pro/pages/sports_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Designs App',
      debugShowCheckedModeBanner: false,
      home: SportsPage()
    );
  }
}