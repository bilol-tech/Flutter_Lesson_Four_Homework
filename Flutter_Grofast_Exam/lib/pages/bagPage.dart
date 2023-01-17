import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_first_portfolio/pages/MainHomePage.dart';

class BagPage extends StatefulWidget {
  BagPage({Key? key}) : super(key: key);

  @override
  State<BagPage> createState() => _BagPageState();
}

class _BagPageState extends State<BagPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const MainHomePage()),
              );
            },
            child: Container(
              width: 80,
              height: 50,
              margin: const EdgeInsets.only(left: 20, top: 60),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(100)),
                  border: Border.all(
                      color: const Color(0xff777777).withOpacity(0.2))),
              child: const Icon(
                Icons.arrow_back,
                color: Color(0xff777777),
              ),
            ),
          ),
          const SizedBox(height: 35),
          Row(
            children: [
              Padding(
                  padding: const EdgeInsets.only(left: 22),
                  child: Text(
                    "My Bag",
                    style: GoogleFonts.raleway(
                        fontWeight: FontWeight.w700,
                        fontSize: 28,
                        color: const Color(0xff194B38)),
                  )),
              Padding(
                  padding: const EdgeInsets.only(left: 222, top: 11),
                  child: Text(
                    "0 items",
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: const Color(0xff9C9C9C)),
                  )),
            ],
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 200),
              height: 75,
              width: 75,
              decoration: const BoxDecoration(
                color: Color(0xffEBF4F1),
                borderRadius: BorderRadius.all(Radius.circular(23)),
              ),
              child: Center(
                  child: Text(
                "😥",
                style: GoogleFonts.raleway(
                    fontWeight: FontWeight.w700, fontSize: 30),
              )),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Center(
              child: Text(
            "It’s lonely here",
            style: GoogleFonts.raleway(
                fontWeight: FontWeight.w800,
                fontSize: 22,
                color: const Color(0xff194B38),
                letterSpacing: 0.3),
          )),
          const SizedBox(
            height: 15,
          ),
          Center(
            child: Text(
              "Start and add more items to the bag.",
              style: GoogleFonts.raleway(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: const Color(0xff9C9C9C),
                  letterSpacing: 0.3),
            ),
          ),
        ],
      ),
    );
  }
}
