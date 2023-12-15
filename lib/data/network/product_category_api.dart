import 'package:dio/dio.dart';
import 'package:eco_market/core/dio_settings.dart';
import 'package:eco_market/data/model/product_category_settings.dart';
import 'package:flutter/material.dart';

class GetProductRepo {
  Future<List<ProductCategoryMotelItem>> getProductCategory() async {
    try {
      final Dio dio = DioSettings().dio;
      final Response response = await dio
          .get("https://neobook.online/ecobak/product-category-list/?json");
      if (response.statusCode == 200) {
        final List<ProductCategoryModel> modelList = (response.data as List)
            .map((json) => ProductCategoryModel.fromJson(json))
            .toList();
        ProductCategoryItems.items = modelList
            .map((model) => ProductCategoryMotelItem(
                  id: model.id ?? 0,
                  name: model.name ?? "error name",
                  image: model.image ?? "error image",
                ))
            .toList();
      return ProductCategoryItems.items;
      } else {
        throw DioException(
            requestOptions: RequestOptions(),
            response: response,
            error: "Не удалось загрузить категории продуктов");
      }
    } catch (e) {
      debugPrint(e.toString());
      throw e;
    }
  }
}

class ProductCategoryModel {
  int? id;
  String? name;
  String? image;

  ProductCategoryModel.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
    image = json["image"];
  }
}

class ProductCategoryMotelItem {
  int id;
  String name;
  String image;

  ProductCategoryMotelItem(
      {required this.id, required this.name, required this.image});
}

class ProductCategoryItems {
  static List<ProductCategoryMotelItem> items = [];
}
