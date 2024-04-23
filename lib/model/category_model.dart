import 'package:flutter/material.dart';

class CategoryModel {
  String? name;
  Color boxColor;

  CategoryModel({
    required this.name,
    required this.boxColor,
  });

  static List<CategoryModel> getCategories() {
    List<CategoryModel> categories = [];

    categories.add(CategoryModel(name: 'Party', boxColor: Color(0xff9283fd)));

    categories
        .add(CategoryModel(name: 'Birthday', boxColor: Colors.blueAccent));

    categories.add(CategoryModel(name: 'Wedding', boxColor: Color(0xff9283fd)));

    categories.add(CategoryModel(name: 'Concert', boxColor: Colors.blueAccent));

    return categories;
  }
}
