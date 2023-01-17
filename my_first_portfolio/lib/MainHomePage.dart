import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:my_first_portfolio/BagPage.dart';
import 'package:my_first_portfolio/HomePage.dart';
import 'package:my_first_portfolio/ProfilePage.dart';
import 'package:my_first_portfolio/SearchPage.dart';

class MainHomePage extends StatefulWidget {
   MainHomePage({Key? key}) : super(key: key);

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  @override

  List listOfPages = [
    HomePage(),
    SearchPage(),
    BagPage(),
    ProfilePage(),
  ];

   int _page = 0;

   GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        body: listOfPages[_page],
        bottomNavigationBar: SizedBox(
          height: 100,
          child: CurvedNavigationBar(
            key: _bottomNavigationKey,
            index: 0,
            height: 75.0,
            items: <Widget>[
              Icon(
                Icons.home,
                size: 33,
                color: Color(0xff2AB44C),
              ),
              Icon(Icons.search_rounded, size: 33, color: Color(0xff2AB44C)),
              Icon(Icons.shopping_bag_outlined, size: 33, color: Color(0xff2AB44C)),
              Icon(Icons.perm_identity, size: 33, color: Color(0xff2AB44C)),
            ],
            color: Colors.white,
            buttonBackgroundColor: Colors.white,
            backgroundColor: Color(0xff2AB44C),
            animationCurve: Curves.linearToEaseOut,
            animationDuration: Duration(milliseconds: 600),
            onTap: (index) {
              setState(() {
                _page = index;
              });
            },
            letIndexChange: (index) => true,
          ),
        ),
    ),
    );
  }
}
