import 'package:flutter/material.dart';
import 'package:my_first_portfolio/auth/ProductTour1.dart';
import 'package:my_first_portfolio/auth/ProductTour2.dart';
import 'package:my_first_portfolio/auth/ProductTour3.dart';

class PageViev extends StatefulWidget {
  const PageViev({super.key});

  @override
  State<PageViev> createState() => _PageVievState();
}

class _PageVievState extends State<PageViev> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: const [
          ProductTour1(),
          ProductTour2(),
          ProductTour3(),
        ],
      ),
    );
  }
}
