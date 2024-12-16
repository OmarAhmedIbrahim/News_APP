import 'package:flutter/cupertino.dart';
import 'package:news_app/components/home_page_builders/home_page_categories_builder.dart';

import '../../classes/home_page_classes/category_components_class.dart';

class HomePageCategories extends StatelessWidget {
  HomePageCategories({super.key});

  List<CategoryComponentsClass> category = [
    CategoryComponentsClass(name: "Sports", image: "assets/images/sports.avif"),
    CategoryComponentsClass(
        name: "Entertainment", image: "assets/images/entertaiment.avif"),
    CategoryComponentsClass(name: "Health", image: "assets/images/health.avif"),
    CategoryComponentsClass(
        name: "Science", image: "assets/images/science.avif"),
    CategoryComponentsClass(
        name: "Business", image: "assets/images/business.avif"),
    CategoryComponentsClass(
        name: "Technology", image: "assets/images/technology.jpeg"),
    CategoryComponentsClass(
        name: "General", image: "assets/images/general.avif"),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        itemCount: category.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) =>
              HomePageCategoriesBuilder(category: category[index])),
    );
  }
}
