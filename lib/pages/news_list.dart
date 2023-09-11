import "package:flutter/material.dart";
import "package:news_app_practice/viewModels/news_article_list_view_model.dart";
import "package:provider/provider.dart";

class NewsList extends StatelessWidget {
  // NewsList({super.key}) {
  //   _newsArticleListViewModel.populateTopHeadlines();
  // }

  @override
  Widget build(BuildContext context) {
    // final nvm = Provider.of<NewsArticleListViewModel>(context, listen: true);
    // print("val of nvm.articles is: ${nvm.articles.length}");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Latest News"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Consumer<NewsArticleListViewModel>(
        builder: (context, value, child) {
          // print("vla of value is ${value.articles}");
          return ListView.builder(
            itemCount: value.articles.length,
            itemBuilder: (context, index) {
              // print("vla ${value.articles[index].title}");
              final singleArticle = value.articles[index];
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
