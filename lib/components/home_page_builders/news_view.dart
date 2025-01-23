import 'package:flutter/cupertino.dart';

import '../../classes/news_components_class.dart';

class NewsView extends StatelessWidget {
  NewsView({super.key, required this.article});
  List<NewsComponentsClass> article;
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: article.length,
          (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image.network(
                errorBuilder: (context, error, stackTrace) {
                  return Image.network(
                    "https://artsmidnorthcoast.com/wp-content/uploads/2014/05/no-image-available-icon-6.png",
                    width: double.maxFinite,
                    height: 300,
                  );
                },

                article[index].image ??
                    "https://artsmidnorthcoast.com/wp-content/uploads/2014/05/no-image-available-icon-6.png",
                width: double.maxFinite,
                height: 300,
              ),
              Text(
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                article[index].title,
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                article[index].description ?? "No description available",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                ),
              )
            ],
          ),
        );
      }),
    );
  }
}
