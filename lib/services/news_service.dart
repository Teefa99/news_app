import 'package:dio/dio.dart';
import 'package:news_app/models/articles_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  Future<List<ArticlesModel>> getNews({required String category}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=d10b2129544b4579867db5f27fb6db3e&category=$category');

      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<ArticlesModel> articlesList = [];

      for (var article in articles) {
        ArticlesModel articlesModel = ArticlesModel.fromJson(article);
        articlesList.add(articlesModel);
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
