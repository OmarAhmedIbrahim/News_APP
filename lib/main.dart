import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/screens/home_page.dart';
import 'package:news_app/services.dart';

void main() {
  runApp(News_app());
}

class News_app extends StatelessWidget {
  const News_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
