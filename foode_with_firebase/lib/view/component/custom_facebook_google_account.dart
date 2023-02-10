import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomSignUPSocialMedia extends StatelessWidget {
  final String text;
  final String image;

  // ignore: non_constant_identifier_names
  const CustomSignUPSocialMedia.CustomBottomButton(
      {Key? key,
        required this.image, required this.text,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.w,
      height: 42.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        color: Colors.white,
        border: Border.all(color: Color(0xffF4F6F9)),
        boxShadow: [
          BoxShadow(
              color: Colors.grey,
              blurRadius: 1,
              spreadRadius: 0,
              offset: Offset(-0, 1)),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 25.w,
            height: 25.h,
            child: Image.asset(image,
              fit: BoxFit.cover,
            ),
          ),
          Center(
              child: Text(
                text,
                style: GoogleFonts.sourceSansPro(
                    fontWeight: FontWeight.w600,
                    fontSize: 18.sp,
                    color: Color(0xff09101D)),
              )),
        ],
      ),
    );


  }
}
