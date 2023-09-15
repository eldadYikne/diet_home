import 'package:flutter/material.dart';

class DietModel {
  String name;
  String iconPath;
  String level;
  String calorie;
  Color boxColor;

  DietModel(
      {required this.level,
      required this.calorie,
      required this.name,
      required this.iconPath,
      required this.boxColor});
  static List<DietModel> getDiets() {
    List<DietModel> diets = [];
    diets.add(DietModel(
        name: 'Salad',
        iconPath:
            'https://www.reshot.com/preview-assets/icons/TWD823CXPR/chinese-food-TWD823CXPR.svg',
        calorie: '180cal',
        level: '2',
        boxColor: Color(0xFFCFD8DC)));

    diets.add(DietModel(
        name: 'Salad',
        iconPath:
            'https://www.reshot.com/preview-assets/icons/TWD823CXPR/chinese-food-TWD823CXPR.svg',
        calorie: '110cal',
        level: '1',
        boxColor: Color(0xFFCFD8DC)));

    diets.add(DietModel(
        name: 'Salad',
        iconPath:
            'https://www.reshot.com/preview-assets/icons/TWD823CXPR/chinese-food-TWD823CXPR.svg',
        calorie: '300cal',
        level: '2',
        boxColor: Color(0xFFCFD8DC)));

    diets.add(DietModel(
        name: 'Salad',
        iconPath:
            'https://www.reshot.com/preview-assets/icons/TWD823CXPR/chinese-food-TWD823CXPR.svg',
        calorie: '70cal',
        level: '2',
        boxColor: Color(0xFFCFD8DC)));

    return diets;
  }
}
