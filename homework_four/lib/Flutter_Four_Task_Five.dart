import 'package:flutter/material.dart';
class ExFive extends StatelessWidget {
  const ExFive ({super.key});

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
                height: 150,
                width: 150,
                child: Icon(
                  Icons.add_a_photo_outlined,
                  color: Colors.white,
                  size: 90,
                ),
                decoration: BoxDecoration(
                  color: Colors.lightBlueAccent.withOpacity(0.5),
                  shape: BoxShape.circle,
                ),
                margin: EdgeInsets.only(top: 170),
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      height: 0,
                      width: 20,
                      margin: EdgeInsets.only(top: 100, left: 43),
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
                      margin: EdgeInsets.only(top: 30, left: 43),
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
                child: Row(
                  children: [
                    Container(
                      height: 4,
                      width: 20,
                      margin: EdgeInsets.only(top: 30, left: 43),
                      child: Icon(
                        Icons.email,
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
                  "E-Mail",
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
                      margin: EdgeInsets.only(top: 30, left: 43),
                      child: Icon(
                        Icons.date_range_outlined,
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
                  "Date of Birth",
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
                  Icons.person_add_alt,
                  size: 33,
                  color: Colors.white,
                ),
                decoration: BoxDecoration(
                  color: Colors.lightBlue.withOpacity(0.8),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  border: Border.all(color: Colors.white),
                ),
                margin: EdgeInsets.only(top: 80),
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