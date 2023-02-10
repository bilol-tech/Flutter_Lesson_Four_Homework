import 'package:foode_with_firebase/model/product_model.dart';

class BannerModel {
  final String title;
  final ProductModel product;
  final String name;

  BannerModel(this.name, {required this.title, required this.product});

  factory BannerModel.fromJson(
      {required Map<String, dynamic> data, required Map? dataProduct}) {
    return BannerModel(
        title: data["title"], data["name"], product: ProductModel.fromJson(dataProduct,false));
  }
}