import 'package:flutter/material.dart';

class ExNine extends StatelessWidget {
  const ExNine({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading: Container(
            child: Icon(
              Icons.menu,
              size: 35,
            ),
          ),
          title: Text(
            "Troubels",
            style: TextStyle(
                fontWeight: FontWeight.bold, letterSpacing: 2, fontSize: 25),
          ),
          actions: <Widget>[
            Container(
              child: Icon(
                Icons.linear_scale,
                size: 30,
              ),
              margin: EdgeInsets.only(right: 15),
            )
          ],
          backgroundColor: Colors.transparent.withOpacity(0),
        ),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                stops: [
                  0.60,
                  0.30,
                  1.111,
                  0.910,
                ],
                colors: [
                  Colors.green,
                  Colors.greenAccent,
                  Colors.lightBlueAccent,
                  Colors.indigoAccent,
                ],
              )),
          child: Column(
            children: [
              Container(
                height: 100,
                width: 100,
                child: FittedBox(child: Icon(Icons.key_outlined, color: Colors.white,)),
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.white, blurRadius: 1, spreadRadius: 12),
                  ],
                ),
                margin: EdgeInsets.only(top: 180, bottom: 0),
              ),
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 250,
                    child: Text(
                      "TROUBLE LOGGING IN?",
                      style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.none,
                          fontSize: 20),
                    ),
                    margin: EdgeInsets.only(left: 110, top: 50, right: 0),
                  ),
                ],
              ),
              Row(
                children: [

                  Container(
                    height: 100,
                    width: 250,
                    child: Text(
                      "Enter your email or phone number and we'll send you a link to get into your account",
                      style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.none,
                          fontSize: 18),
                    ),
                    margin: EdgeInsets.only(left: 100, top: 0, right: 0),
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 50,
                        width: 340,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(60)),
                            border: Border.all(color: Colors.white,width: 2)
                        ),
                        padding: EdgeInsets.only(right: 275, left: 0),
                        margin: EdgeInsets.only(left:50, top: 20),
                        child: Container(
                          height: 70,
                          width: 80,
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.5),
                              shape: BoxShape.circle
                          ),
                          margin: EdgeInsets.only(left: 0),
                          child: FittedBox(child: Icon(Icons.email, color: Colors.white)),
                        ),
                      ),
                    ],
                  ),


                ],
              ),
              Column(
                children: [
                  Container(
                    child: Text("or", style: TextStyle(color: Colors.white, fontSize: 30),),
                  )
                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 50,
                        width: 340,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(60)),
                            border: Border.all(color: Colors.white,width: 1)
                        ),
                        padding: EdgeInsets.only(right: 275, left: 0),
                        margin: EdgeInsets.only(left:50, top: 5),
                        child: Container(
                          height: 70,
                          width: 80,
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.5),
                              shape: BoxShape.circle
                          ),
                          margin: EdgeInsets.only(left: 0),
                          child: FittedBox(child: Icon(Icons.call, color: Colors.white)),
                        ),
                      ),
                    ],
                  ),


                ],
              ),


              Container(
                height: 50,
                width: 220,
                child: Center(
                  child: Text(
                    "SEND LOGIN LINK",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(40))),
                margin: EdgeInsets.only(top: 40),
              ),
              Container(
                height: 20,
                width: 350,
                child: Text(
                  "",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 15),
                ),
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.white, width: 2),)),
                margin: EdgeInsets.only(top: 5),
              ),
              Container(
                height: 20,
                width: 350,
                child: Text(
                  "Support Center",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 20),
                ),
                decoration: BoxDecoration(),
                margin: EdgeInsets.only(top: 14),
              ),
            ],
          ),
          height: 950,
          width: double.infinity,
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue,
          unselectedItemColor:Colors.grey,
          elevation: 10,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.call,
                  color: Colors.blue,
                  size: 35,
                ), label: "Call Center"
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.live_help,
                  color: Colors.grey,
                  size: 35,
                ),
                label: "Help Center"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.email,
                  color: Colors.grey,
                  size: 35,
                ),
                label: "Our Email"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_circle_sharp,
                  color: Colors.grey,
                  size: 35,
                ),
                label: "Profile"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                  color: Colors.grey,
                  size: 35,
                ),
                label: "Setting"),
          ],
        ),

      ),
    );
  }
}
