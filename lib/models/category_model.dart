import 'package:flutter/material.dart';

class CategoryModel {
  String name;
  String iconPath;
  Color boxColor;

  CategoryModel(
      {required this.name, required this.iconPath, required this.boxColor});
  static List<CategoryModel> getCategories() {
    List<CategoryModel> categories = [];
    categories.add(CategoryModel(
        name: 'Salad',
        iconPath:
            'https://www.reshot.com/preview-assets/icons/TWD823CXPR/chinese-food-TWD823CXPR.svg',
        boxColor: Color(0xFFCFD8DC)));
    categories.add(CategoryModel(
        name: 'Drink',
        iconPath:
            'https://www.reshot.com/preview-assets/icons/DUYKGBF2XM/hot-food-DUYKGBF2XM.svg',
        boxColor: Color.fromARGB(255, 198, 202, 205)));
    categories.add(CategoryModel(
        name: 'Chips',
        iconPath:
            'https://www.reshot.com/preview-assets/icons/U9YN7LZAW3/food-bowl-with-lid-U9YN7LZAW3.svg',
        boxColor: Color.fromARGB(255, 206, 222, 230)));
    categories.add(CategoryModel(
        name: 'Pizza',
        iconPath:
            'https://www.reshot.com/preview-assets/icons/UHEQNSRM5T/canned-fish-food-UHEQNSRM5T.svg',
        boxColor: Color.fromARGB(255, 191, 225, 239)));
    categories.add(CategoryModel(
        name: 'Kola',
        iconPath:
            'https://www.reshot.com/preview-assets/icons/K9MVHXG3Y8/dog-food-K9MVHXG3Y8.svg',
        boxColor: Color.fromARGB(255, 135, 153, 161)));
    categories.add(CategoryModel(
        name: 'Wine',
        iconPath:
            'https://www.reshot.com/preview-assets/icons/JY2ZKM765U/food-JY2ZKM765U.svg',
        boxColor: Color.fromARGB(255, 135, 153, 161)));
    return categories;
  }
}
