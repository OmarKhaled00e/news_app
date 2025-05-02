import 'package:dio/dio.dart';
import 'package:news_app/features/home/data/models/article_model.dart';

class ApiService {
  final Dio dio;

  ApiService({required this.dio});
  final String baseUrl = 'https://newsapi.org/v2';
  final String apiKey = 'b2bbd340a066446cb3a18cdd64019975';
  Future<List<ArticleModel>> getNews({required String category}) async {
    var response = await dio.get(
      '$baseUrl/top-headlines?apiKey=$apiKey&category=$category',
    );
    Map<String, dynamic> data = response.data;
    List<dynamic> articles = data['articles'];
    List<ArticleModel> articlesList = [];
    for (var article in articles) {
      articlesList.add(ArticleModel.fromJson(article));
    }
    return articlesList;
  }
}
