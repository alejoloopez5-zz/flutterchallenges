import 'package:flutter/material.dart';

class CenterCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                child: Text(
                  'alarm',
                  style: TextStyle(color: Colors.grey),
                ),
                padding: EdgeInsets.only(top: 15, left: 20),
              ),
              SizedBox(
                width: 200,
              ),
              Container(
                child: _CustomAlarm(),
                padding: EdgeInsets.only(top: 15, right: 0),
              )
            ],
          ),
          Divider(
            color: Colors.grey,
            height: 48,
            thickness: 1,
            endIndent: 20,
            indent: 20,
          ),
          _CustomIcons(),
          _CustomDivider(),
          _CustomIcons2(),
          _CustomDivider(),
          _CustomIcons3(),
        ],
      ),
    );
  }
}

class _CustomIcons3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
      Padding(
        padding: const EdgeInsets.only(left: 20, top: 10),
        child: Icon(
          Icons.wb_sunny,
          size: 40,
          color: Colors.black,
        ),
      ),
      SizedBox(
        width: 10,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '07:30',
              style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
            ),
            Text(
              'wake up',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    ]);
  }
}

class _CustomIcons2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24),
      child: Row(
        children: [
          Icon(
            Icons.access_time,
            color: Colors.grey,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            '8 hours sleep',
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(
            width: 150,
          ),
          Icon(
            Icons.arrow_forward_ios,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}

class _CustomAlarm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      width: 55,
      decoration: BoxDecoration(
          color: Color(0xff242B32), borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
              padding: EdgeInsets.only(left: 2),
              child: Text("on",
                  style: TextStyle(
                      color: Color(0xff676F76), fontWeight: FontWeight.w400))),
          ClipRRect(
            borderRadius: BorderRadius.circular(29),
            child: Container(
              width: 25,
              height: 25,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}

class _CustomIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
      Padding(
        padding: const EdgeInsets.only(left: 20, top: 10),
        child: Icon(
          Icons.bedtime,
          size: 40,
          color: Colors.black,
        ),
      ),
      SizedBox(
        width: 10,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'to bed',
              style: TextStyle(color: Colors.grey),
            ),
            Text(
              '23:30',
              style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    ]);
  }
}

class _CustomDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, top: 2, bottom: 2),
      child: Container(
          alignment: Alignment.bottomLeft,
          padding: EdgeInsets.only(left: 20),
          height: 25,
          child: VerticalDivider(
            color: Colors.grey,
            thickness: 1,
          )),
    );
  }
}
