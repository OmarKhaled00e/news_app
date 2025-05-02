class ArticleModel {
  final String title;
  final String description;
  final String image;

  ArticleModel({
    required this.title,
    required this.description,
    required this.image,
  });

  factory ArticleModel.fromJson(json) {
    return ArticleModel(
      image: json['urlToImage'],
      title: json['title'],
      description: json['description'],
    );
  }
}
