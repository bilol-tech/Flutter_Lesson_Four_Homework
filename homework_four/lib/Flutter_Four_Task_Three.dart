import 'package:flutter/material.dart';

class ExThree extends StatelessWidget {
  const ExThree({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text(
            "Bottom navigation",
            style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
                letterSpacing: 0),
          ),
          leading: Container(
              margin: EdgeInsets.only(left: 65),
              child: Icon(Icons.flag_circle_outlined, size: 45)),
        ),
        body: Container(
          color: Colors.yellow,
          height: 820,
          width: 430,
          child: Text(
            "Single Screen",
            style: TextStyle(
                decoration: TextDecoration.none,
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 40,
                fontFamily: 'Raleway'
            ),
          ),
          padding: EdgeInsets.only(top: 60, left: 15),
        ),
      ),
    );
  }
}