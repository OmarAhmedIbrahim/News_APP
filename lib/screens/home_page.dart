import 'package:flutter/material.dart';
import '../components/home_page_builders/home_page_appbar.dart';
import '../components/home_page_builders/home_page_categories.dart';
import '../components/news_handler.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  List lol = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(title: HomePageAppbar()),
          SliverToBoxAdapter(
              child:HomePageCategories(),),
          NewsHandler( category: "general",),
        ],
      ),
    );
  }
}
