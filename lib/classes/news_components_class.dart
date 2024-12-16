class NewsComponentsClass {
  String? image;
  String title;
  String? description;

  NewsComponentsClass({required this.image , required this.description, required this.title});

  factory NewsComponentsClass.fromjson({required Map<String , dynamic> json}){
    return NewsComponentsClass(image: json['urlToImage'], description: json['description'], title: json['title']);
  }
}