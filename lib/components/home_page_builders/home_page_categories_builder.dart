import 'package:flutter/material.dart';
import 'package:news_app/screens/category_screen.dart';
import '../../classes/home_page_classes/category_components_class.dart';

class HomePageCategoriesBuilder extends StatelessWidget {
  HomePageCategoriesBuilder({super.key, required this.category});
  CategoryComponentsClass category;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context){
            return CategoryScreen(category_name: category.name,);
          }));},
          child: Container(
            height: 100,
            width: 200,
            child: Center(
                child: Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Text(
                category.name,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            )),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(category.image),
              ),
            ),
          ),
        ),
      );
  }
}
