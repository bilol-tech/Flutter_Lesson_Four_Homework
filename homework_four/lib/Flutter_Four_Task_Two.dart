import 'package:flutter/material.dart';

class ExTwo extends StatelessWidget {
  const ExTwo({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            "Bottom navigation",
            style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
                letterSpacing: 0),
          ),
          leading: Icon(Icons.keyboard_arrow_left_rounded, size: 50,),
          actions: <Widget> [
            Container(
                margin: EdgeInsets.only(right: 12),
                child: Icon(Icons.linear_scale, size: 30,)
            ),
          ],
        ),
        body: Container(
          child: Stack(
            children: [
              Container(
                height: 50,
                width: 150,
                child: Icon(Icons.alarm, color: Colors.blue,size: 150,),
                margin: EdgeInsets.only(top: 250, left: 143),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue,
          unselectedItemColor:Colors.grey,
          elevation: 10,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.alarm,
                  color: Colors.blue,
                  size: 35,
                ), label: "Alarm"
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.book,
                  color: Colors.grey,
                  size: 35,
                ),
                label: "Message"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.cloud,
                  color: Colors.grey,
                  size: 35,
                ),
                label: "Cloud"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite,
                  color: Colors.grey,
                  size: 35,
                ),
                label: "Gallery"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.event_available,
                  color: Colors.grey,
                  size: 35,
                ),
                label: "Gallery"),
          ],
        ),
      ),
    );
  }
}