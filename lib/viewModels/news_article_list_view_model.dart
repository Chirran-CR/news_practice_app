
import 'package:flutter/material.dart';
import 'package:news_app_practice/models/news_article.dart';
import 'package:news_app_practice/services/web_services.dart';
import 'package:news_app_practice/viewModels/news_article_view_model.dart';

enum LoadingStatus{
  completed,
  searching,
  empty
}
class NewsArticleListViewModel extends ChangeNotifier{

  List<NewsArticleViewModel> articles = [];

  // NewsArticleListViewModel(){
  //   _populateTopHeadlines();
  // }
  // LoadingStatus loadingStatus = LoadingStatus.searching;

  Future<void> search(String keyword) async {
    // loadingStatus = LoadingStatus.searching;
    // notifyListeners();
    List<NewsArticle> newsArticles = await WebServices().fetchRequestHeadlines(keyword);
    articles = newsArticles.map((article)=> NewsArticleViewModel(article: article)).toList();
    // loadingStatus = articles.isEmpty? LoadingStatus.empty : LoadingStatus.completed;
    notifyListeners();
  }

  Future<void> populateTopHeadlines() async{
    // loadingStatus = LoadingStatus.searching;
    // notifyListeners();
    List<NewsArticle> newsArticles = await WebServices().fetchTopHeadlines();
    articles = newsArticles.map((article)=>NewsArticleViewModel(article: article)).toList();
    // print("val of articles is: $articles");
    // loadingStatus = articles.isEmpty? LoadingStatus.empty : LoadingStatus.completed;
    notifyListeners();
  }
}