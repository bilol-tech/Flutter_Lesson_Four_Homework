import 'package:flutter/material.dart';
class ExSix extends StatelessWidget {
  const ExSix ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        extendBodyBehindAppBar: true,
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                stops: [
                  0.1,
                  0.4,
                  0.6,
                  0.9,
                ],
                colors: [
                  Colors.green,
                  Colors.greenAccent,
                  Colors.lightBlueAccent,
                  Colors.indigoAccent,
                ],
              )
          ),
          child: Column(
            children: [
              Container(
                child: Text(
                  "Welcome",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Colors.white,
                      fontSize: 50, fontWeight: FontWeight.bold),
                ),
                margin: EdgeInsets.only(top: 160),
              ),
              Container(
                child: Text(
                  "Sign in to continue",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Colors.white,
                      fontSize: 18),
                ),
                margin: EdgeInsets.only(top: 8),
              ),
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: FittedBox(
                  child: Icon(
                    Icons.person,
                    color: Colors.grey,
                    // size: 120,
                  ),
                ),
                padding: EdgeInsets.only(top: 10),
                margin: EdgeInsets.only(top: 55),
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        color: Colors.grey,
                        child: Icon(
                          Icons.person,
                          size: 32,
                          color: Colors.white,
                        ),
                        margin: EdgeInsets.only(top: 40, left: 90),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 40,
                        width: 200,
                        color: Colors.white,
                        child: Text(
                          "Usernmae",
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              color: Colors.grey.withOpacity(0.5),
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        padding: EdgeInsets.only(top: 5, left: 15),
                        margin: EdgeInsets.only(top: 40, left: 0),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        child: Icon(
                          Icons.lock,
                          size: 32,
                          color: Colors.white,
                        ),
                        color: Colors.grey,
                        margin: EdgeInsets.only(left: 90, top: 12),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 40,
                        width: 200,
                        color: Colors.white,
                        child: Text(
                          "Password",
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              color: Colors.grey.withOpacity(0.5),
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        padding: EdgeInsets.only(top: 5, left: 15),
                        margin: EdgeInsets.only(top: 12, left: 0),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 15,
                    width: 15,
                    color: Colors.grey,
                    margin: EdgeInsets.only(top: 18, left:90),
                    child: Icon(
                      Icons.check,
                      color: Colors.white,
                      size: 12,
                    ),
                  ),
                  Container(
                    height: 20,
                    width: 90,
                    child: Text(
                      "Remember me",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 10),
                    ),
                    margin: EdgeInsets.only(top: 25, left: 10),
                  ),
                  Container(
                    height: 20,
                    width: 90,
                    child: Text(
                      "Forget Password?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 10),
                    ),
                    margin: EdgeInsets.only(top: 25, left: 30),
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
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.all(Radius.circular(7))),
                margin: EdgeInsets.only(top: 40),
              ),
            ],
          ),
          height: 950,
          width: double.infinity,
        ),
      ),
    );
  }
}