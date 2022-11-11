import 'package:flutter/material.dart';

class ExOne extends StatelessWidget {
  const ExOne({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            "TITLE",
            style: TextStyle(
                color: Colors.white,
                fontSize: 35,
                fontWeight: FontWeight.bold,
                letterSpacing: 4),
          ),
        ),
        body: Container(
          child: Stack(
            children: [
              Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.5),
                    borderRadius: BorderRadius.all(Radius.circular(8))
                ),
                margin: EdgeInsets.only(top: 300, left: 135),
                child: Center(
                  child: Text(
                    "Launch screen",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: 75,
              height: 75,
              decoration: const BoxDecoration(color: Colors.blueAccent, shape: BoxShape.circle, boxShadow: [
                BoxShadow(
                    color: Colors.black,
                    blurRadius: 10,
                    spreadRadius: 0,
                    offset: Offset(0, 5))
              ]),
              margin: EdgeInsets.only(left: 10, bottom: 0),
              child: Icon(
                Icons.shop_2,
                color: Colors.white,
                size: 40,
              ),
            ),
            Container(
              width: 75,
              height: 75,
              decoration:
              const BoxDecoration(color: Colors.blueAccent, shape: BoxShape.circle, boxShadow: [
                BoxShadow(
                    color: Colors.black,
                    blurRadius: 10,
                    spreadRadius: 0,
                    offset: Offset(0, 5))
              ]),
              margin: EdgeInsets.only(left: 10, top: 13, bottom: 10),
              child: Icon(
                Icons.share,
                color: Colors.white,
                size: 40,
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.lightBlueAccent,
          selectedItemColor: Colors.pink,
          selectedFontSize: 15,
          unselectedItemColor: Colors.black,
          unselectedFontSize: 15,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.pink,
                  size: 50,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.message,
                  color: Colors.green,
                  size: 50,
                ),
                label: "Message"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.camera_alt,
                  color: Colors.black,
                  size: 50,
                ),
                label: "Capture"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.photo,
                  color: Colors.red,
                  size: 50,
                ),
                label: "Gallery"),
          ],
        ),
      ),
    );
  }
}