import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foode_with_firebase/view/pages/home/categorys_page.dart';
import 'package:foode_with_firebase/view/pages/home/chat_page.dart';
import 'package:foode_with_firebase/view/pages/home/home_page.dart';
import 'package:foode_with_firebase/view/pages/home/product_page.dart';
import 'package:foode_with_firebase/view/pages/home/profile_Page.dart';
import 'package:foode_with_firebase/view/pages/product/add_product.dart';

class MainHomePage extends StatefulWidget {
  const MainHomePage({Key? key}) : super(key: key);

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

int _index = 0;

List listOfPage = [
  HomePage(),
  CategoryPage(),
  AddProductPage(),
  ProductListPage(),
  ProfilePage(),
];

class _MainHomePageState extends State<MainHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      extendBody: true,
      body: listOfPage[_index],

      // floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      bottomNavigationBar: FloatingNavbar(

        onTap: (int val) => setState(() => _index = val),
        currentIndex: _index,
        selectedItemColor: Color(0xffFF1843),
        selectedBackgroundColor: Color(0xffF43F5E).withOpacity(0.1),
        unselectedItemColor: Color(0xffFF1843),
        // backgroundColor: Color(0xffFfffff),
        backgroundColor: Colors.white,


        items: [
          FloatingNavbarItem(icon: Icons.home_filled,title: 'Home'),
          FloatingNavbarItem(icon: Icons.search_rounded, title: 'Search'),
          FloatingNavbarItem(icon: Icons.add, title: 'Add',),
          FloatingNavbarItem(icon: Icons.shopping_bag, title: 'Bag'),
          FloatingNavbarItem(icon: Icons.person, title: 'Profile',),
        ],
      ),
    );
  }
}
