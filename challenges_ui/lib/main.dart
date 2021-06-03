import 'package:challenges_ui/src/pages/challenge1_page.dart';
import 'package:challenges_ui/src/pages/challenge2_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'challenge2',
      routes: {
        'challenge1': (BuildContext context) => Challenge1Page(),
        'challenge2': (BuildContext context) => Challenge2Page(),
      },
    );
  }
}
