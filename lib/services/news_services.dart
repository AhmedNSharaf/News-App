import 'package:dio/dio.dart';
import 'package:flutter_application_1/models/article_model.dart';

class NewsServices {
  final Dio dio;
  NewsServices(this.dio);
  Future<List<ArticleModel>> getTopHeadLines({required String category}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?apiKey=fbe4535cd7144c6fa83bd358b078f3b2&country=us&category=$category');

      Map<String, dynamic> jsonData = response.data;
      // string refers to the data type of the key , deynamic refers to the data types of the values(data) which are stored in the keys

      List<dynamic> articles = jsonData['articles'];

      List<ArticleModel> articleList = [];
      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(article);
        articleList.add(articleModel);
      }
      return articleList;
    } catch (e) {
      return [];
    }
  }
}
