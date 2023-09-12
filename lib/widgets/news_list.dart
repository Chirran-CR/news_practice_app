
import 'package:flutter/material.dart';
import 'package:news_app_practice/viewModels/news_article_view_model.dart';

class NewsList extends StatelessWidget{

  final List<NewsArticleViewModel> newsArticleList;

  const NewsList({required this.newsArticleList, super.key});

  @override
  Widget build(BuildContext context){
    return ListView.builder(
            itemCount: newsArticleList.length,
            itemBuilder: (context, index) {
              // print("vla ${value.articles[index].title}");
              final singleArticle = newsArticleList[index];
              final String articleTitle = singleArticle.title.length > 45
                  ? "${singleArticle.title.substring(0, 45)}..."
                  : singleArticle.title;
              return ListTile(
                contentPadding: const EdgeInsets.all(0),
                leading: SizedBox(
                  height: 100,
                  width: 100,
                  // padding: const EdgeInsets.all(0),
                  // margin: const EdgeInsets.all(0),
                  child: singleArticle.imageURL == null
                      ? Image.asset(
                          "assets/images/news_background.jpeg",
                          // scale: 1.5,
                        )
                      : Image.network(
                          singleArticle.imageURL!,
                          // scale: 1.5,
                        ),
                ),
                // title: Text(singleArticle.title),
                title: Text(
                  articleTitle,
                  style: const TextStyle(
                    fontSize: 15,
                    // fontWeight
                  ),
                ),
              );
            },
          );
  }
}