import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foode_with_firebase/Style/Style.dart';
import 'package:foode_with_firebase/view/component/custom_search.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../../controller/home_controller.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  final TextEditingController search = TextEditingController();

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<HomeController>().getCategory(isLimit: false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("fdghjkl;");
    final state = context.watch<HomeController>();
    final event = context.read<HomeController>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Category", style: GoogleFonts.akshar(fontWeight: FontWeight.bold, fontSize: 30, letterSpacing: 1),),
        backgroundColor: ThemeText.primaryColor.withOpacity(0.5),
        elevation:  0.1,
      ),
      body: Column(
        children: [
          CustomSearchSection.CustomBottomButton(icon: '', height: 0,),
          Expanded(
            child: GridView.builder(
                shrinkWrap: true,
                itemCount: state.listOfCategory.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 240,
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(8),
                    width: 178.w,
                    height: 184,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(24)),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 50,
                            offset: Offset(0, 6),
                            color: Color(0xff5A6CEA).withOpacity(0.08))
                      ],
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        state.listOfCategory[index].image == null
                            ? const SizedBox.shrink()
                            : Image.network(
                          state.listOfCategory[index].image ?? "",
                          height: 150,
                          width: 150,
                        ),
                        8.verticalSpace,
                        Text(state.listOfCategory[index].name ?? "",
                            style: ThemeText.textStyleRegular2(
                                size: 25, textColor: const Color(0xff6D7580))),
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
