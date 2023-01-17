import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchPage extends StatefulWidget {
   SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override

  List listOfImage = ["assets/Rectangle 65.png", "assets/fruits.jpeg"];

  List<Color> listOfColor = [Color(0xff194B38), Colors.white];

  List listOfButtonColor = [
    Color(0xff4CBB5E).withOpacity(0.8),
    Colors.white.withOpacity(0.5)
  ];

  List listOfPercentage = [
    "45%",
    "15%",
  ];

  List listOfTitle = [
    "New Member",
    "New Member",
  ];

  List listOfText = [
    "discount",
    "discount",
  ];

  List listOfButtonTextColor = [
    Colors.white,
    Colors.white,
  ];

  List listOfCategoriesImage = [
    "assets/fruits.png",
    "assets/vegie.png",
    "assets/bread.png",
    "assets/meat.png",
    "assets/cheers.png",
    "assets/drinks.png"
  ];

  List listOfCategoriesText = [
    "Fruits",
    "Vegie",
    "Bread",
    "Meat",
    "Cheers",
    "Drinks"
  ];

  List listOfCategoriesColor = [
    Color(0xffEBF4F1),
    Color(0xffF3F3EA),
    Color(0xffF3E9DD),
    Color(0xffF8ECEC),
    Color(0xffF8F5DE),
    Color(0xffF9E9D2),
  ];

  List listOfPopularImage = [
    "assets/fruits2.png",
    "assets/vegie2.png",
    "assets/bread2.png",
    "assets/meat2.png",
    "assets/cheers.png",
    "assets/drinks.png"
  ];

  List listOfPopularPrice = [
    "\$ 1.8",
    "\$ 1.3",
    "\$ 1.7",
    "\$ 1.0",
    "\$ 1.8",
    "\$ 1.3",
  ];

  int index = - 1;

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: 80,
                  height: 50,
                  margin: EdgeInsets.only(left: 20, top: 60),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      border: Border.all(
                          color: Color(0xff777777).withOpacity(0.2))),
                  child: Icon(
                    Icons.arrow_back,
                    color: Color(0xff777777),
                  ),
                ),
              ),
              Container(
                height: 25,
                width: 25,
                margin: EdgeInsets.only(left: 280, top: 70),
                child: Image.asset("assets/bag.png",),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                width: 295,
                margin: EdgeInsets.only(top: 35, left: 20, right: 20),
                child: TextFormField(

                  style: GoogleFonts.raleway(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      letterSpacing: 0.7,
                      color: Color(0xff194B38)),
                  decoration: InputDecoration(
                    filled: true,
                    prefixIcon:
                    Icon(Icons.search_rounded, color: Color(0xff4CBB5E)),
                    hintText: "Search fresh groceries",
                    hintStyle: GoogleFonts.raleway(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: Color(0xff194B38)),
                    fillColor: Color(0xff194B38).withOpacity(0.06),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(
                          color: Color(0xff194B38).withOpacity(0.06)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(
                          color: Color(0xff194B38).withOpacity(0.06)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(
                          color: Color(0xff194B38).withOpacity(0.06)),
                    ),
                  ),
                ),
              ),
              Container(
                width: 65,
                height: 65,
                margin: EdgeInsets.only(top: 35, left: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    color: Color(0xff194B38).withOpacity(0.06),
                    image: DecorationImage(
                      image:
                      AssetImage("assets/Group.png"),
                    )),
              ),
            ],
          ),
          SizedBox(
            height: 165,
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: (){
                        this.index = index;
                        setState(() {});
                      },
                      child: Container(
                        width: 120,
                        margin: EdgeInsets.only(right: 0, top: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 100,
                              width: 153,
                              margin: EdgeInsets.only(left: 10),
                              decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius.all(Radius.circular(25)),
                                color: listOfCategoriesColor[index],
                              ),
                              child: Image.asset(listOfPopularImage[index]),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10, top: 10),
                              child: Center(
                                child: Text(
                                  listOfCategoriesText[index],
                                  style: GoogleFonts.raleway(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13,
                                      color: Color((0xff9C9C9C))),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
