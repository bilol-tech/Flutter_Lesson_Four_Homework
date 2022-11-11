import 'package:flutter/material.dart';

class ExEight extends StatelessWidget {
  const ExEight({super.key});

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
            "SIGN IN",
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
                child: FittedBox(child: Icon(Icons.person_sharp, color: Colors.white,)),
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
                  Row(
                    children: [
                      Container(
                        height: 2,
                        width: 120,
                        color: Colors.white,
                        margin: EdgeInsets.only(top: 0, left: 50),
                      ),
                    ],
                  ),
                  Container(
                    height: 100,
                    width: 78,
                    child: Text(
                      "SIGN IN",
                      style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.none,
                          fontSize: 20),
                    ),
                    margin: EdgeInsets.only(left: 5, top: 72, right: 0),
                  ),
                  Row(
                    children: [
                      Container(
                        height: 2,
                        width: 120,
                        color: Colors.white,
                        margin: EdgeInsets.only(top: 0),
                      ),
                    ],
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
                          border: Border.all(color: Colors.white,width: 1)
                        ),
                        padding: EdgeInsets.only(right: 275, left: 0),
                        margin: EdgeInsets.only(left:50),
                        child: Container(
                          height: 70,
                          width: 80,
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.5),
                              shape: BoxShape.circle
                          ),
                          margin: EdgeInsets.only(left: 0),
                          child: FittedBox(child: Icon(Icons.person, color: Colors.white)),
                        ),
                      ),
                    ],
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
                            border: Border.all(color: Colors.white,width: 1)
                        ),
                        padding: EdgeInsets.only(right: 275, left: 0),
                        margin: EdgeInsets.only(left:50, top: 40),
                        child: Container(
                          height: 70,
                          width: 80,
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.5),
                              shape: BoxShape.circle
                          ),
                          margin: EdgeInsets.only(left: 0),
                          child: FittedBox(child: Icon(Icons.lock, color: Colors.white)),
                        ),
                      ),
                    ],
                  ),


                ],
              ),
              Row(
                children: [
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                        color: Colors.white54,
                        shape: BoxShape.circle
                    ),
                    margin: EdgeInsets.only(top: 18, left:60),
                    child: Icon(
                      Icons.check,
                      color: Colors.blueGrey,
                      size: 35,
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 120,
                    child: Text(
                      "Remember me",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 17),
                    ),
                    margin: EdgeInsets.only(top: 25, left: 10),
                  ),
                  Container(
                    height: 20,
                    width: 180,
                    child: Text(
                      "Forget Password?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 17),
                    ),
                    margin: EdgeInsets.only(top: 17, left: 0),
                  ),
                ],
              ),
              Container(
                height: 50,
                width: 180,
                child: Center(
                  child: Text(
                    "LOGIN",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                ),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
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
                    border: Border(bottom: BorderSide(color: Colors.white))),
                margin: EdgeInsets.only(top: 5),
              ),
              Container(
                height: 20,
                width: 350,
                child: Text(
                  "Create Account",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 20),
                ),
                decoration: BoxDecoration(),
                margin: EdgeInsets.only(top: 10),
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
                  Icons.video_call,
                  color: Colors.blue,
                  size: 35,
                ), label: "Posts"
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.add_a_photo_outlined,
                  color: Colors.grey,
                  size: 35,
                ),
                label: "Add Post"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.online_prediction,
                  color: Colors.grey,
                  size: 35,
                ),
                label: "Go Live"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite,
                  color: Colors.grey,
                  size: 35,
                ),
                label: "Likes"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_circle_sharp,
                  color: Colors.grey,
                  size: 35,
                ),
                label: "Profile"),
          ],
        ),

      ),
    );
  }
}
