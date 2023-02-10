
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foode_with_firebase/Style/Style.dart';
import 'package:foode_with_firebase/view/pages/auth/onBoarding.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../../controller/home_controller.dart';
import '../../../controller/user_controller.dart';
import '../../component/custom_text_from.dart';

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
      appBar: AppBar(
        title: Text("Producs", style: GoogleFonts.akshar(fontSize: 32, letterSpacing: 1, fontWeight: FontWeight.bold),),
        backgroundColor: ThemeText.primaryColor.withOpacity(0.6),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 35, bottom: 20),
            child: Row(
              children: [
                Expanded(
                  child: CustomTextFrom(
                    controller: search,
                    label: "Search",
                    onChange: (s) {
                      // event.searchCategory(s);
                    },
                  ),
                ),
                IconButton(
                    onPressed: () {
                      event.setFilterChange();
                    },
                    icon: Icon(Icons.menu)),
                IconButton(
                    onPressed: () {
                      context.read<UserController>().logOut(() {
                        Navigator.pushAndRemoveUntil(
                            context, MaterialPageRoute(builder: (_)=>OnBoarding()), (route) => false);
                      });
                    },
                    icon: Icon(Icons.logout)),
              ],
            ),
          ),
          state.setFilter || (state.selectIndex == -1)
              ? const SizedBox.shrink()
              : Container(
            margin: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: Colors.pinkAccent,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.pinkAccent),
            ),
            padding:
            const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child:
            Text(state.listOfCategory[state.selectIndex].name ?? "", style: ThemeText.chegirma,),
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
                            ? Colors.pinkAccent
                            : Colors.white,
                        borderRadius: BorderRadius.circular(24),
                        border: Border.all(color: Colors.pinkAccent),
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
                  return Container(
                    margin: EdgeInsets.all(16),
                    width: double.infinity,
                    height: 100,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                    child: Row(
                      children: [
                        state.listOfProduct[index].image == null
                            ? const SizedBox.shrink()
                            : Container(
                              height: 80,
                              width: 80,
                              margin: EdgeInsets.only(left: 15),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                image: DecorationImage(image: NetworkImage( state.listOfProduct[index].image ?? "",),fit: BoxFit.cover)
                              ),
                            ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 170,
                              child: Container(
                                  margin: EdgeInsets.only(top: 20, left: 15),
                                  child: Text(state.listOfProduct[index].name ?? "", overflow: TextOverflow.ellipsis, style: ThemeText.textStyleRegular(),),
                              ),
                            ),
                            SizedBox(
                              width: 170,
                              child: Container(
                                  margin: EdgeInsets.only(top: 8, left: 15),
                                  child: Text(state.listOfProduct[index].desc ?? "", overflow: TextOverflow.ellipsis, style: ThemeText.haveAccount,)
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Text(state.listOfProduct[index].price.toString(), style: ThemeText.signIn,),
                        IconButton(
                            onPressed: () {
                              event.changeLike(index);
                            },
                            icon: (state.listOfProduct[index].isLike)
                                ? Icon(Icons.favorite, color: Colors.red,)
                                : Icon(Icons.favorite_border))
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