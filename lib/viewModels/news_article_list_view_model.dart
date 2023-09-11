
import 'package:flutter/material.dart';
import 'package:news_app_practice/models/news_article.dart';
import 'package:news_app_practice/services/web_services.dart';
import 'package:news_app_practice/viewModels/news_article_view_model.dart';

class NewsArticleListViewModel extends ChangeNotifier{

  List<NewsArticleViewModel> articles = [];

  void populateTopHeadlines() async{
    List<NewsArticle> newsArticles = await WebServices().fetchTopHeadlines();
    articles = newsArticles.map((article)=>NewsArticleViewModel(article: article)).toList();
    print("val of articles is: $articles");
    
    notifyListeners();
  }
}