import 'package:dio/dio.dart';
import 'classes/news_components_class.dart';

class services{
  final dio = Dio();

  Future getNews({required category}) async {
    final response = await dio.get('https://newsapi.org/v2/top-headlines?apiKey=bafed6b3fe764715a967d9f91614a101&category=$category');
    Map<String , dynamic > json = response.data;
    List articles = json['articles'] ;
    List<NewsComponentsClass> news_articles = [] ;
    for( var i in articles){
      NewsComponentsClass object =  NewsComponentsClass.fromjson(json: i) ;
      news_articles.add(object);
    }
    return news_articles;
  }
}