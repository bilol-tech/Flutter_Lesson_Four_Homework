import 'package:flutter/material.dart';
class ExFour extends StatelessWidget {
  const ExFour ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent.withOpacity(0.0),
          leading: Icon(Icons.keyboard_arrow_left_rounded, size: 55,),
          actions: <Widget> [
            Container(
              child: Text("Login", style: TextStyle(fontSize: 20,),),
              margin: EdgeInsets.only(top: 10, right: 15),
            ),
          ],
        ),
        body: Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 220),
                child: Text("boniad", style: TextStyle(color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold),),
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      height: 4,
                      width: 20,
                      margin: EdgeInsets.only(top: 110, left: 43),
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 30,
                width: 350,
                child: Text(
                  "User name",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 20),
                ),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colors.white)
                    )
                ),
                margin: EdgeInsets.only(top: 0),
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      height: 4,
                      width: 20,
                      margin: EdgeInsets.only(top: 40, left: 43),
                      child: Icon(
                        Icons.compass_calibration,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 30,
                width: 350,
                child: Text(
                  "Password",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 20),
                ),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colors.white)
                    )
                ),
                margin: EdgeInsets.only(top: 0),
              ),
              Container(
                height: 50,
                width: 180,
                child: Icon(
                  Icons.file_open_outlined,
                  color: Colors.white,
                ),
                decoration: BoxDecoration(
                    color: Colors.lightBlue.withOpacity(0.8),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  border: Border.all(color: Colors.white),
                ),
                margin: EdgeInsets.only(top: 100),
              ),
              Container(
                height: 20,
                width: 350,
                child: Text(
                  "You don't have an account? Sign up",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 15),
                ),
                margin: EdgeInsets.only(top: 50),
              ),
            ],
          ),
          height: 950,
          width: double.infinity,
          decoration: new BoxDecoration(
            color: Colors.blue,
            image: new DecorationImage(
              fit: BoxFit.cover,
              colorFilter: new ColorFilter.mode(Colors.blue.withOpacity(0.3), BlendMode.dstATop),
              image: new NetworkImage(
                'https://rare-gallery.com/uploads/posts/5422222-evergreen-fog-mist-forest-tree-pine-fir-dark-cloudy-pine-tree-fir-tree-foggy-hd-wallpaper-wallpaper-natural-nature-rural-landscape-color-green-color-free-images.jpg',
              ),
            ),

          ),
        ),
      ),
    );
  }
}