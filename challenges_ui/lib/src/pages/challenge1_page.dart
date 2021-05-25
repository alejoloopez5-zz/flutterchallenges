import 'dart:ui';

import 'package:flutter/material.dart';

class Challenge1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScaffoldCustom();
  }
}

class ScaffoldCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  child: Image(
                    image: AssetImage('assets/batman.png'),
                    width: 100,
                  ),
                ),
              ],
            ),
            Container(
              child: Image(
                image: AssetImage('assets/img.png'),
                width: size.width,
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
            Text('Hello!',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 22,
                    fontStyle: FontStyle.normal)),
            SizedBox(
              height: 12,
            ),
            Text(
              'Welcome to Sales TOP A Platform To',
              style: TextStyle(color: Colors.grey),
            ),
            Text('Manage Real Estate Needs.',
                style: TextStyle(color: Colors.grey)),
            SizedBox(
              height: 50,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonCustom(
                    color: Colors.blue.shade900,
                    title: 'Login',
                    heightC: 45,
                    widthC: 150,
                    colorText: Colors.white,
                    borderC: 0,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ButtonCustom(
                    title: 'Sign Up',
                    color: Colors.white,
                    widthC: 150,
                    heightC: 45,
                    colorText: Colors.black,
                    borderC: 2,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            FooterCustom(),
          ],
        ),
      ),
    );
  }
}

class FooterCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            'Or via social media',
            style: TextStyle(color: Colors.grey),
          ),
          Container(
            width: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FadeInImage(
                  placeholder: AssetImage(''),
                  image: AssetImage('assets/facebook.jpg'),
                  fit: BoxFit.cover,
                  height: 55,
                ),
                FadeInImage(
                  placeholder: AssetImage(''),
                  image: AssetImage('assets/google.jpg'),
                  fit: BoxFit.cover,
                  height: 27,
                ),
                FadeInImage(
                  placeholder: AssetImage(''),
                  image: AssetImage('assets/linked.png'),
                  fit: BoxFit.cover,
                  height: 35,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ButtonCustom extends StatelessWidget {
  final String title;
  final Color color;
  final double widthC;
  final double heightC;
  final Color colorText;
  final double borderC;

  ButtonCustom(
      {required this.title,
      required this.color,
      required this.widthC,
      required this.heightC,
      required this.colorText,
      required this.borderC});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Text(
        this.title,
        style: TextStyle(
          color: this.colorText,
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      )),
      width: this.widthC,
      height: this.heightC,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: this.color,
          border: Border.all(width: this.borderC)),
    );
  }
}
