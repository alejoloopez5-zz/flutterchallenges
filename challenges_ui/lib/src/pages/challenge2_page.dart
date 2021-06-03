import 'package:challenges_ui/src/widgets/Center_Card.dart';
import 'package:challenges_ui/src/widgets/Top_Card.dart';
import 'package:flutter/material.dart';

class Challenge2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffECF0F3),
      body: SafeArea(
        child: Column(children: [TopCard(), CenterCard()]),
      ),
    );
  }
}
