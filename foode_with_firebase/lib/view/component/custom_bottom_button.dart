import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomBottomButton extends StatelessWidget {
  final String label;
  final double opacity;

  // ignore: non_constant_identifier_names
  const CustomBottomButton.CustomBottomButton(
      {Key? key,
        required this.label,
        required this.opacity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: 390.w,
      margin: EdgeInsets.only(bottom: 40.r, left: 20.r, right: 20.r),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          gradient: LinearGradient(colors: [Color(0xffFF1843).withOpacity(opacity), Color(0xffFF7E95).withOpacity(opacity)],begin: Alignment.topCenter, end: Alignment.bottomCenter)
      ),
      child: Center(child: Text(label, style: GoogleFonts.sourceSansPro(fontWeight: FontWeight.w600, fontSize: 22.sp, color: Colors.white),)),
    );
  }
}
