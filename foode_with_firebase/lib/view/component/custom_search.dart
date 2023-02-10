import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foode_with_firebase/view/pages/auth/sign_up.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../controller/home_controller.dart';
import '../../controller/user_controller.dart';

class CustomSearchSection extends StatelessWidget {
  final int height;
  final String icon;

  // ignore: non_constant_identifier_names
  const CustomSearchSection.CustomBottomButton(
      {Key? key,
        required this.icon, required this.height,})
      : super(key: key);



  @override
  Widget build(BuildContext context) {
    final state = context.watch<HomeController>();
    final event = context.read<HomeController>();
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 250.w,
          height: 55.h,
          margin: EdgeInsets.only(top: 30.r, left: 20.r, right: 20.r),
          child: TextFormField(
            onChanged: (s) {
              event.searchCategory(s);
            },
            style: GoogleFonts.raleway(
                fontWeight: FontWeight.w400,
                fontSize: 16.sp,
                letterSpacing: 0.7.r,
                color: Color(0xff194B38)),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: 20.r),
              filled: true,
              suffixIcon:
              Container(margin: EdgeInsets.only(right: 20.r),child: Icon(Icons.search_rounded, color: Color(0xff858C94))),
              labelText: "Search",
              labelStyle: GoogleFonts.sourceSansPro(
                  fontWeight: FontWeight.w400,
                  fontSize: 14.sp,
                  color: Color(0xff09101D)),
              fillColor: Color(0xffF4F6F9),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(100.r)),
                borderSide: BorderSide(
                    color: Color(0xffF4F6F9)),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(100.r)),
                borderSide: BorderSide(
                    color: Color(0xffF4F6F9)),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(100.r)),
                borderSide: BorderSide(
                    color: Color(0xffF4F6F9)),
              ),
            ),
          ),
        ),
        Container(
          width: 44.r,
          height: 44.r,
          margin: EdgeInsets.only(top:28.r, left: 5.r),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              color: Color(0xffF43F5E).withOpacity(0.1),
              image: DecorationImage(
                image:
                AssetImage("assets/image/filter list.png"),
              )),
        ),
      ],
    );
  }
}
