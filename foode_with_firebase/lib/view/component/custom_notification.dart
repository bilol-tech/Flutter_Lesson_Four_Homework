import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomNotification extends StatelessWidget {
  final int height;
  final String icon;

  // ignore: non_constant_identifier_names
  const CustomNotification.CustomBottomButton(
      {Key? key,
        required this.icon, required this.height,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 105,
          width: 110,
          margin: const EdgeInsets.only(left: 30, top: 30),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(23)),
            color: Color(0xffF1F3F2),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 25,
              ),
              const Center(
                  child: Icon(
                    Icons.notifications,
                    color: Color(0xff3B87E0),
                  )),
              const SizedBox(
                height: 8,
              ),
              Center(
                  child: Text(
                    "Notification",
                    style: GoogleFonts.raleway(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: const Color(0xff777777)),
                  ))
            ],
          ),
        ),
        Container(
          height: 105,
          width: 110,
          margin: const EdgeInsets.only(left: 25, top: 30),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(23)),
            color: Color(0xffF1F3F2),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 25,
              ),
              const Center(
                  child: Icon(
                    Icons.card_giftcard,
                    color: Color(0xff26AD71),
                  )),
              const SizedBox(
                height: 8,
              ),
              Center(
                  child: Text(
                    "Voucher",
                    style: GoogleFonts.raleway(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: const Color(0xff777777)),
                  ))
            ],
          ),
        ),
        Container(
          height: 105,
          width: 110,
          margin: const EdgeInsets.only(left: 25, top: 30),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(23)),
            color: Color(0xffF1F3F2),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 25,
              ),
              const Center(
                  child: Icon(
                    Icons.favorite,
                    color: Color(0xffEC534A),
                  )),
              const SizedBox(
                height: 8,
              ),
              Center(
                  child: Text(
                    "Wishlist",
                    style: GoogleFonts.raleway(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: const Color(0xff777777)),
                  ))
            ],
          ),
        ),
      ],
    );

  }
}
