import 'package:fitness/models/category_model.dart';
import 'package:fitness/models/diet_moel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
// ignore: unused_import
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CategoryModel> categories = [];
  List<DietModel> diets = [];

  void _getCategories() {
    categories = CategoryModel.getCategories();
  }

  void _getDiets() {
    diets = DietModel.getDiets();
  }

  @override
  Widget build(BuildContext context) {
    _getCategories();
    _getDiets();
    return Scaffold(
      appBar: appBar(),
      backgroundColor: Colors.white,
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        _searchField(),
        SizedBox(
          height: 40,
        ),
        _categoriesSection(),
        SizedBox(
          height: 40,
        ),
        _dietsSection()
      ]),
    );
  }

  Column _dietsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            'Recommendation for Diet',
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w800),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Container(
            height: 200,
            child: ListView.separated(
                itemCount: diets.length,
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) => SizedBox(
                      width: 10,
                    ),
                itemBuilder: (context, index) {
                  return Container(
                    width: 150,
                    height: 200,
                    decoration: BoxDecoration(
                        color: diets[index].boxColor,
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 80,
                          height: 100,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SvgPicture.network(
                                  diets[index].iconPath,
                                  height: 50,
                                  width: 50,
                                ),
                              )),
                        ),
                        SizedBox(height: 15),
                        Text(
                          diets[index].name,
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                              fontSize: 19),
                        ),
                        Text(
                          diets[index].calorie + ' | Lev:' + diets[index].level,
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                              fontSize: 14),
                        )
                      ],
                    ),
                  );
                }),
          ),
        )
      ],
    );
  }

  Column _categoriesSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'Category',
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w800),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Container(
            height: 150,
            child: ListView.separated(
                itemCount: categories.length,
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) => SizedBox(
                      width: 10,
                    ),
                itemBuilder: (context, index) {
                  return Container(
                    width: 100,
                    decoration: BoxDecoration(
                        color: categories[index].boxColor,
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white, shape: BoxShape.circle),
                          child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SvgPicture.network(
                                  categories[index].iconPath,
                                  height: 50,
                                  width: 50,
                                ),
                              )),
                        ),
                        SizedBox(height: 15),
                        Text(
                          categories[index].name,
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                              fontSize: 14),
                        )
                      ],
                    ),
                  );
                }),
          ),
        )
      ],
    );
  }

  Container _searchField() {
    return Container(
      margin: EdgeInsets.only(top: 40, left: 20, right: 20),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: Color(0xff1D1617).withOpacity(0.11),
            blurRadius: 40,
            spreadRadius: 0.0)
      ]),
      child: TextField(
        decoration: InputDecoration(
            prefixIcon: Padding(
              padding: EdgeInsets.all(12),
              child: SvgPicture.asset(
                'assets/icons/search.svg',
                color: Color(0xffDDDADA),
              ),
            ),
            hintText: 'Search food',
            hintStyle: TextStyle(color: Color(0xffDDDADA)),
            suffixIcon: Container(
              width: 100,
              child: IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    VerticalDivider(
                      color: Color(0xffDDDADA),
                      thickness: 0.1,
                      endIndent: 10,
                      indent: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.all(12),
                      child: SvgPicture.asset(
                        'assets/icons/menu1.svg',
                        color: Color(0xffDDDADA),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            filled: true,
            fillColor: Colors.white,
            contentPadding: EdgeInsets.all(15),
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(15))),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      backgroundColor: Colors.white,
      title: Text(
        'Breakfast',
        style: TextStyle(color: Colors.black87),
      ),
      centerTitle: true,
      leading: Container(
        margin: EdgeInsets.all(10),
        alignment: Alignment.center,
        child: SvgPicture.asset(
          'assets/icons/arrow.svg',
        ),
        width: 30,
        height: 30,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
      ),
      actions: [
        GestureDetector(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            child: SvgPicture.asset(
              'assets/icons/menu.svg',
              height: 20,
            ),
            width: 30,
            height: 30,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
          ),
        )
      ],
    );
  }
}
