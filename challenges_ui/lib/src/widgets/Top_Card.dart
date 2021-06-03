import 'package:flutter/material.dart';

class TopCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      width: double.infinity,
      height: 180,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [
                      0.1,
                      0.3,
                      0.7,
                      1
                    ],
                    colors: [
                      Color(0xffcff1fe),
                      Color(0xffe9cef4),
                      Color(0xfffca99e).withOpacity(0.88),
                      Color(0xffffdc74),
                    ])),
          ),
          Align(
              child: Icon(
                Icons.close,
              ),
              alignment: Alignment.topRight),
          Positioned(
            right: 0,
            bottom: 0,
            child: Image(
              image: AssetImage('assets/challenge2.png'),
              height: 180,
              width: 180,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'you did it! here\nyou can manage\nyour alarm,\nchange time and\nother things',
                style: TextStyle(
                    color: Colors.black.withOpacity(0.90),
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    height: 1),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
