import "dart:convert";

import "package:http/http.dart" as http;
import "package:news_app_practice/models/news_article.dart";

class WebServices {
  
  Future<List<NewsArticle>> fetchTopHeadlines() async {
    String url =
        "https://newsapi.org/v2/top-headlines?country=us&apiKey=b91ef55ded2b4d8d9bdbfd8c99d74eb8";
    var uri = Uri.parse(url);
    final response = await http.get(uri);
    
    if(response.statusCode == 200){
      var decodedJson = jsonDecode(response.body);

      Iterable listOfArticles = decodedJson["articles"];
      return listOfArticles.map((article)=> NewsArticle.fromJson(article)).toList();
      // print("val of article is: ${listOfArticles}");

    }else{
      throw Exception("Failed to get news..");
    }
  }
}
