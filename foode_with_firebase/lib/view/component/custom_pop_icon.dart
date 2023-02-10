import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foode_with_firebase/view/pages/auth/sign_up.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../controller/user_controller.dart';

class CustomPopIcon extends StatelessWidget {
  final int height;
  final String icon;

  // ignore: non_constant_identifier_names
  const CustomPopIcon.CustomBottomButton(
      {Key? key,
        required this.icon, required this.height,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36.r,
      width: 36.r,
      padding: EdgeInsets.only(left: 6.r),
      margin: EdgeInsets.only(left: 22.r, top: 40.r),
      decoration: BoxDecoration(
          color: Color(0xffF43F5E).withOpacity(0.1),
          borderRadius: BorderRadius.all(Radius.circular(10.r))),
      child: Icon(
        Icons.arrow_back_ios,
        size: 17,
        color: Color(0xffF43F5E).withOpacity(0.7),
      ),
    );
  }
}
