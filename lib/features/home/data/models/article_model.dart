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
      image: json['urlToImage'] ?? '',
      title: json['title'] ?? 'No Title',
      description: json['description'] ?? 'No Description',
    );
  }
}
