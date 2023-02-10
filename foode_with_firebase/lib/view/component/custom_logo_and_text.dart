import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomLogoText extends StatelessWidget {
 final int height;
  final String image;

  // ignore: non_constant_identifier_names
  const CustomLogoText.CustomBottomButton(
      {Key? key,
         required this.image, required this.height,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: height.h,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image),fit: BoxFit.contain)
      ),
    );

  }
}
