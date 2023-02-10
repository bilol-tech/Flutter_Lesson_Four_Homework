import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foode_with_firebase/Style/Style.dart';
import 'package:provider/provider.dart';

import '../../controller/home_controller.dart';

class MenuListView extends StatelessWidget {
  const MenuListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: context.watch<HomeController>().listOfProduct.length >= 4
            ? 4
            : context.watch<HomeController>().listOfProduct.length,
        itemBuilder: ((context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Container(
            margin: const EdgeInsets.only(bottom: 30),
            height: 110.h,
            width: 380.w,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 50,
                      offset: const Offset(0, 6),
                      color: const Color(0xff5A6CEA).withOpacity(0.08))
                ],
                borderRadius: const BorderRadius.all(Radius.circular(16)),
                color: Colors.white),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                12.horizontalSpace,
                context
                    .watch<HomeController>()
                    .listOfProduct[index]
                    .image ==
                    null
                    ? const SizedBox.shrink()
                    : Image.network(
                   context
                      .watch<HomeController>()
                      .listOfProduct[index]
                      .image ??
                      "",
                  height: 64.h,
                  width: 64.w,
                ),
                20.horizontalSpace,
                Expanded(
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                            context
                                .watch<HomeController>()
                                .listOfProduct[index]
                                .name ??
                                "",
                            style: ThemeText.textStyleRegular()),
                        4.verticalSpace,
                        Text(
                            context
                                .watch<HomeController>()
                                .listOfProduct[index]
                                .desc ??
                                "",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: ThemeText.textStyleRegular2(
                                size: 14,
                                textColor: const Color(0xff858C94))),
                        Text(
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            '\$${context.watch<HomeController>().listOfProduct[index].price.toString()}',
                            style: ThemeText.textStyleRegular(
                                size: 20, textColor: ThemeText.primaryColor)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        )));
  }
}
