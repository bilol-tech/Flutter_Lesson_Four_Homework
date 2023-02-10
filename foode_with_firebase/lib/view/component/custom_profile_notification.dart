

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foode_with_firebase/view/pages/auth/sign_up.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../controller/user_controller.dart';

class CustomProfileNotification extends StatelessWidget {
  final int height;
  final String icon;

  // ignore: non_constant_identifier_names
  const CustomProfileNotification.CustomBottomButton(
      {Key? key,
        required this.icon, required this.height,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 30, right: 20, top: 30),
          width: 420,
          height: 70,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(23)),
            color: Color(0xffF1F3F2),
          ),
          child: Row(
            children: [
              const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Icon(
                    Icons.person,
                    color: Color(0xff26AD71),
                    size: 30,
                  )),
              Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: SizedBox(
                      width: 120,
                      child: Text(
                        "My profile",
                        style: GoogleFonts.raleway(
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                            color: const Color(0xff777777)),
                      ))),
              const Padding(
                  padding: EdgeInsets.only(left: 150),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                    color: Color(0xff777777),
                  )),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 30, right: 20, top: 20),
          width: 420,
          height: 70,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(23)),
            color: Color(0xffF1F3F2),
          ),
          child: Row(
            children: [
              const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Icon(
                    Icons.settings,
                    color: Color(0xff26AD71),
                    size: 30,
                  )),
              Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: SizedBox(
                      width: 120,
                      child: Text(
                        "Notification Setting",
                        style: GoogleFonts.raleway(
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                            color: const Color(0xff777777)),
                      ))),
              const Padding(
                  padding: EdgeInsets.only(left: 150),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                    color: Color(0xff777777),
                  )),
            ],
          ),
        ),
        GestureDetector(
          onTap: (){
            context.read<UserController>().logOut(() {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (_) => const SignUp()),
                      (route) => false);
            });
          },
          child: Container(
            margin: const EdgeInsets.only(left: 30, right: 20, top: 20),
            width: 420,
            height: 70,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(23)),
              color: Color(0xffF1F3F2),
            ),
            child: Row(
              children: [
                const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Icon(
                      Icons.logout_outlined,
                      color: Color(0xffEC534A),
                      size: 30,
                    )),
                Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: SizedBox(
                        width: 120,
                        child: Text(
                          "Log Out",
                          style: GoogleFonts.raleway(
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                              color: const Color(0xff777777)),
                        ))),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
