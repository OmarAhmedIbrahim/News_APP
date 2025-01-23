import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/news_handler.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({super.key, required this.category_name});
  String category_name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title : Text(category_name),
      ),
      body: CustomScrollView(
          slivers: [NewsHandler(category: category_name,)]),
    );
  }
}
