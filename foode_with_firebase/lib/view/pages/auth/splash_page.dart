// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:foode_with_firebase/view/pages/auth/sign_up.dart';
//
// import '../../../controller/local_sotre/local_store.dart';
// import '../home/home_page.dart';
//
// class SplashPage extends StatefulWidget {
//   const SplashPage({Key? key}) : super(key: key);
//
//   @override
//   State<SplashPage> createState() => _SplashPageState();
// }
//
// class _SplashPageState extends State<SplashPage> {
//   @override
//   void initState() {
//     WidgetsBinding.instance.addPostFrameCallback((_) async {
//       String? docId = await LocalStore.getDocId();
//       if (docId == null) {
//         // ignore: use_build_context_synchronously
//         Navigator.pushAndRemoveUntil(
//             context,
//             MaterialPageRoute(builder: (_) => const SignUp()),
//             (route) => false);
//       } else {
//         // ignore: use_build_context_synchronously
//         Navigator.pushAndRemoveUntil(
//             context,
//             MaterialPageRoute(builder: (_) => const HomePage()),
//             (route) => false);
//       }
//     });
//
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Image.asset("assets/image/Rectangle 23.02.07.png").color,
//       body: Column(
//         children: [
//           // 64.verticalSpace,
//           Container(
//             width: 328.w,
//             height: 926.h,
//             margin: EdgeInsets.only(left: 50.r),
//             decoration: BoxDecoration(
//               // color: Colors.red,
//               image: DecorationImage(image: AssetImage("assets/image/Rectangle 23.02.07.png"),opacity: 0.4
//               ),
//             ),
//             child: Image.asset("assets/image/group.png"),
//           )],
//       ),
//     );
//   }
// }
