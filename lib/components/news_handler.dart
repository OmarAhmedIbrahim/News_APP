import 'package:flutter/material.dart';
import 'package:news_app/components/home_page_builders/news_view.dart';

import '../classes/news_components_class.dart';
import '../services.dart';

class NewsHandler extends StatefulWidget {
   NewsHandler({super.key , required this.category});
  String category;
  @override
  State<NewsHandler> createState() => _NewsHandlerState();
}

var future;

class _NewsHandlerState extends State<NewsHandler> {
  @override
  void initState() {
    future = services().getNews(category: widget.category);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsView(article: snapshot.data! as List<NewsComponentsClass>);
          } else if (snapshot.hasError) {
            return SliverToBoxAdapter(child: Text("Error"));
          } else {
            return SliverToBoxAdapter(child: Center(
              child: CircularProgressIndicator(),
            ),);
          }
        });
  }
}
