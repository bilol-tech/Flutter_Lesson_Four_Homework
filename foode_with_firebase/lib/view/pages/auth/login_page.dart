
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foode_with_firebase/view/component/custom_bottom_button.dart';
import 'package:foode_with_firebase/view/component/custom_logo_and_text.dart';
import 'package:foode_with_firebase/view/pages/auth/sign_up.dart';
import 'package:provider/provider.dart';

import '../../../Style/Style.dart';
import '../../../controller/auth_controller.dart';
import '../../component/custom_facebook_google_account.dart';
import '../../component/custom_text_from.dart';
import '../home/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late TextEditingController phoneController;
  late TextEditingController passwordController;

  @override
  void initState() {
    phoneController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    phoneController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 60.h),
              CustomLogoText.CustomBottomButton(image: "assets/image/group.png", height: 160),
              const Text("Sign in to your account", style: ThemeText.topTitle,),
              SizedBox(height: 40.h),
              CustomTextFrom(controller: phoneController, label: "Phone"),
              SizedBox(height: 20.h),
              CustomTextFrom(controller: passwordController, label: "Password", isObscure: true,),
              context.watch<AuthController>().errorText != null
                  ? Text(context.watch<AuthController>().errorText ?? "")
                  : const SizedBox.shrink(),
              SizedBox(height: 30.h),
              GestureDetector(onTap: (){
               context
                   .read<AuthController>()
                   .login(phoneController.text, passwordController.text, () {
                 Navigator.pushAndRemoveUntil(
                     context,
                     MaterialPageRoute(builder: (_) => HomePage()),
                         (route) => false);
               });
             },child: CustomBottomButton.CustomBottomButton(label: "Sign in", opacity: 1)),
              Container(
                width: 400.w,
                height: 16.h,
                child: Center(
                    child: Text(
                        "or continue with",
                        style: ThemeText.haveAccount
                    )),
              ),
              SizedBox(height: 33.h,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomSignUPSocialMedia.CustomBottomButton(image: "assets/image/facebook.png", text: "Facebook"),
                  CustomSignUPSocialMedia.CustomBottomButton(image: "assets/image/google.png", text: "Google")
                ],
              ),
              SizedBox(height: 25.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 155.w,
                    height: 30.h,
                    child: const Center(child: Text("Don't have an account?",style: ThemeText.haveAccount)),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (_)=>const SignUp()));
                    },
                    child: Container(
                      width: 56.w,
                      height: 30.h,
                      child: const Center(child: Text("Sign up", style: ThemeText.signIn,)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
