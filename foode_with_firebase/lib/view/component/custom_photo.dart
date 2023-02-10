import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foode_with_firebase/view/pages/auth/sign_up.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../controller/user_controller.dart';

class CustomPhoto extends StatelessWidget {
  final String image;
  final String label;

  // ignore: non_constant_identifier_names
  const CustomPhoto.CustomBottomButton(
      {Key? key,
        required this.label, required this.image,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140.h,
      width: 350.w,
      margin: EdgeInsets.only(left: 30, right: 30),
      decoration: BoxDecoration(
          color: Color(0xffffffff),
          borderRadius:
          BorderRadius.all(Radius.circular(20.r)),
          border: Border.all(
            color: Color(0xffEBEEF2),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 1,
              offset: Offset(-0, 1),
            )
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 80.h,
            width: 80.w,
            margin: EdgeInsets.only(top: 12.r),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffF43F5E).withOpacity(0.1.r),
            ),
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(image,
                color: Color(0xffFF1843),
                width: 32.w,
                height: 32.h,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15.r),
            child: Text(label,
              style: GoogleFonts.sourceSansPro(
                  fontWeight: FontWeight.w600,
                  fontSize: 16.sp,
                  color: Color(0xff09101D)),
            ),
          ),
        ],
      ),
    );
  }
}
