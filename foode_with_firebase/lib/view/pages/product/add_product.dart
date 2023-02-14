import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';

import '../../../controller/home_controller.dart';
import '../../../controller/product_controller.dart';
import '../../component/custom_category.dart';
import '../../component/custom_new_category.dart';
import '../../component/custom_text_from.dart';
import '../../component/edit_photo_to_product.dart';
import '../../component/product_image_dialog.dart';
import '../../component/typeDropDown.dart';


class AddProductPage extends StatefulWidget {
  const AddProductPage({super.key});

  @override
  State<AddProductPage> createState() => _AddProductPageState();
}

class _AddProductPageState extends State<AddProductPage> {
  final TextEditingController nameTextEditController = TextEditingController();
  final TextEditingController descTextEditController = TextEditingController();
  final TextEditingController priceTextEditController = TextEditingController();
  final TextEditingController categoryTextEditController =
  TextEditingController();
  final TextEditingController typeEditController = TextEditingController();
  final TextEditingController newCategoryTextEditController =
  TextEditingController();

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ProductController>().getCategory();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: context.watch<HomeController>().isTotalLoading
            ? Center(child: const CircularProgressIndicator())
            :  SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  context.watch<ProductController>().imagePath.isEmpty
                      ? const ProductImageDialog()
                      : const SizedBox.shrink(),
                  context.watch<ProductController>().imagePath.isEmpty
                      ? const SizedBox.shrink()
                      : Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 250.h,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: FileImage(
                                File(context
                                    .watch<ProductController>()
                                    .imagePath),
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                      EditPhotoProduct()
                    ],
                  ),
                  30.verticalSpace,
                  CustomTextFrom(
                    controller: nameTextEditController,
                    label: "Name",
                  ),
                  30.verticalSpace,
                  CustomTextFrom(
                    controller: descTextEditController,
                    label: "Description",
                  ),
                  30.verticalSpace,
                  CustomTextFrom(
                    controller: priceTextEditController,
                    label: "Price",
                    keyboardType: TextInputType.number,
                  ),
                  30.verticalSpace,
                  const Customcategory(),
                  30.verticalSpace,
                  const CustomNewCategory(),
                  30.verticalSpace,
                  const TypeDropdown(),
                  20.verticalSpace,
                  ElevatedButton(
                      onPressed: () {
                        context.read<ProductController>().createProduct(
                            name: nameTextEditController.text,
                            desc: descTextEditController.text,
                            price: priceTextEditController.text);
                        nameTextEditController.clear();
                        descTextEditController.clear();
                        priceTextEditController.clear();
                        context.read<ProductController>().imagePath = '';
                        QuickAlert.show(
                            context: context,
                            type: QuickAlertType.success,
                            autoCloseDuration: Duration(seconds: 3));
                      },
                      child: context.watch<ProductController>().isSaveLoading
                          ? const CircularProgressIndicator(
                        color: Colors.white,
                      )
                          : const Text("Save")),
                  80.verticalSpace
                ],
              ),
            ),
          ),
        ));
  }
}
