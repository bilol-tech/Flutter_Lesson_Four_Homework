import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextStyle extends StatelessWidget {
  final String label;
  final int color;
  final int textSize;
  final int marginLeft;
  final int marginRight;
  final int marginTop;
  final int marginBottom;

  // ignore: non_constant_identifier_names
  const CustomTextStyle.CustomBottomButton(
      {Key? key,
        required this.label,
        required this.color, required this.textSize, required this.marginLeft, required this.marginRight, required this.marginTop, required this.marginBottom,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.only(left: marginLeft.r, bottom: marginBottom.r, top: marginTop.r, right: marginRight.r),
      child: Text(label, textAlign: TextAlign.center, style: GoogleFonts.sourceSansPro( fontSize: textSize.sp, color: Color(color),),
    ));
  }
}
