import "dart:convert";

import "package:http/http.dart" as http;
import "package:news_app_practice/models/news_article.dart";
import "package:news_app_practice/utils/constant.dart";

class WebServices {
  Future<List<NewsArticle>> fetchRequestHeadlines(String keyword) async {
    String url = Constant.getHeadlines(keyword);
    var uri = Uri.parse(url);
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      var decodedJson = jsonDecode(response.body);
      Iterable listOfArticles = decodedJson["articles"];
      return listOfArticles
          .map((article) => NewsArticle.fromJson(article))
          .toList();
    } else {
      throw Exception("Failed to fetch requested topics");
    }
  }

  Future<List<NewsArticle>> fetchTopHeadlines() async {
    String url = Constant.topHeadlinesUrl;

    var uri = Uri.parse(url);
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      var decodedJson = jsonDecode(response.body);

      Iterable listOfArticles = decodedJson["articles"];
      return listOfArticles
          .map((article) => NewsArticle.fromJson(article))
          .toList();
      // print("val of article is: ${listOfArticles}");
    } else {
      throw Exception("Failed to get news..");
    }
  }
}
