import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foode_with_firebase/Style/Style.dart';
import 'package:foode_with_firebase/view/component/custom_search.dart';
import 'package:provider/provider.dart';
import '../../../controller/home_controller.dart';

class ProductListPage extends StatefulWidget {
  const ProductListPage({Key? key}) : super(key: key);

  @override
  State<ProductListPage> createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  final TextEditingController search = TextEditingController();

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<HomeController>()
        ..getProduct(isLimit: false)
        ..getCategory(isLimit: false)
        ..getUser();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<HomeController>();
    final event = context.read<HomeController>();
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.only(left: 0),
            child: Row(
              children: [
                Expanded(
                  child: CustomSearchSection.CustomBottomButton(icon: "", height: 0)
                ),
              ],
            ),
          ),
          state.setFilter || (state.selectIndex == -1)
              ? const SizedBox.shrink()
              : Container(
            decoration: BoxDecoration(
              color: Colors.pinkAccent,
              borderRadius: BorderRadius.circular(24),
              border: Border.all(color: Colors.pinkAccent),
            ),

            child:
            Text(state.listOfCategory[state.selectIndex].name ?? ""),
          ),
          Expanded(
            child: state.setFilter
                ? Wrap(
              children: [
                for (int i = 0; i < state.listOfCategory.length; i++)
                  InkWell(
                    onTap: () {
                      event.changeIndex(i);
                    },
                    child: Container(
                      margin: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color: state.selectIndex == i
                            ? ThemeText.primaryColor
                            : Colors.white,
                        borderRadius: BorderRadius.circular(24),
                        border: Border.all(color: ThemeText.primaryColor),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 6),
                      child: Text(state.listOfCategory[i].name ?? ""),
                    ),
                  )
              ],
            )
                : ListView.builder(
                shrinkWrap: true,
                itemCount:
                context.watch<HomeController>().listOfProduct.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 30),
                      height: 115.h,
                      width: 380.w,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 50,
                                offset: const Offset(0, 6),
                                color: const Color(0xff5A6CEA)
                                    .withOpacity(0.08))
                          ],
                          borderRadius:
                          const BorderRadius.all(Radius.circular(16)),
                          color: Colors.white),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          12.horizontalSpace,
                          Padding(
                              padding: const EdgeInsets.only(top: 12),
                              child: context
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
                                height: 100.h,
                                width: 100.w,
                              )),
                          20.horizontalSpace,
                          Expanded(
                            child: Container(
                              child: Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 0),
                                    child: Text(
                                        context
                                            .watch<HomeController>()
                                            .listOfProduct[index]
                                            .name ??
                                            "",
                                        overflow: TextOverflow.visible,
                                        maxLines: 1,
                                        style: ThemeText.textStyleRegular()),
                                  ),
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
                                          textColor:
                                          const Color(0xff858C94))),
                                  Text(
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      '\$${context.watch<HomeController>().listOfProduct[index].price.toString()}',
                                      style: ThemeText.textStyleRegular(
                                          size: 20,
                                          textColor: ThemeText.primaryColor)),
                                ],
                              ),
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
