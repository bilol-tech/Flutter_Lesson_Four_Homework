import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foode_with_firebase/view/component/custom_bottom_button.dart';
import 'package:foode_with_firebase/view/component/custom_texts.dart';
import 'package:foode_with_firebase/view/pages/auth/sign_up.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff09101D),
      body: Container(
        height: 928.h,
        width: 432.w,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/image/Image.png"),
                fit: BoxFit.cover)),
        child: Container(
          margin: EdgeInsets.only(top: 233.r),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/image/Rectangle 23.21.25.png"),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              const Spacer(),

              const CustomTextStyle.CustomBottomButton(label: "Foode", color: 0xffffffff, textSize: 30, marginLeft: 40, marginRight: 40, marginTop: 20, marginBottom: 20,),
              const CustomTextStyle.CustomBottomButton(
                  label:
                      "The best food ordering and delivery app of the century",
                  color: 0xffFFFFFF,
                  textSize: 15, marginLeft: 40, marginRight: 40, marginTop: 20, marginBottom: 20,

              ),
              InkWell(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => const SignUp()));
                },
                child: const CustomBottomButton.CustomBottomButton(
                    label: "Next", opacity: 1),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
