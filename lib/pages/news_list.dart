import "package:flutter/material.dart";
import "package:news_app_practice/viewModels/news_article_list_view_model.dart";
import "package:provider/provider.dart";

class NewsList extends StatelessWidget {
  final NewsArticleListViewModel _newsArticleListViewModel =
      NewsArticleListViewModel();

  // NewsList({super.key}) {
  //   _newsArticleListViewModel.populateTopHeadlines();
  // }

  @override
  Widget build(BuildContext context) {
    // final nvm = Provider.of<NewsArticleListViewModel>(context, listen: true);
    // print("val of nvm.articles is: ${nvm.articles.length}");
    return Scaffold(
      appBar: AppBar(title: const Text("Latest News")),
      body: Consumer<NewsArticleListViewModel>(
        builder: (context, value, child) {
          // print("vla of value is ${value.articles}");
          return ListView.builder(
            itemCount: value.articles.length,
            itemBuilder: (context, index) {
              // print("vla ${value.articles[index].title}");
              return ListTile(
                title: Text(value.articles[index].title),
              );
            },
          );
        },
      ),
    );
    // return Scaffold(
    //   appBar: AppBar(
    //     title: const Text("Latest News"),
    //   ),
    //   body: ListView.builder(
    //       itemCount: nvm.articles.length,
    //       itemBuilder: (context, index) {
    //         return ListTile(
    //           title: Text(nvm.articles[index].title),
    //         );
    //       }),
    // );
  }
}
