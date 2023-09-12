import "package:flutter/material.dart";
import "package:news_app_practice/viewModels/news_article_list_view_model.dart";
import "package:news_app_practice/widgets/news_list.dart";
import "package:provider/provider.dart";

class NewsListPage extends StatefulWidget {
  NewsListPage({super.key});
  @override
  State<NewsListPage> createState() => _NewsListPageState();
}

class _NewsListPageState extends State<NewsListPage> {
  final _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    Provider.of<NewsArticleListViewModel>(context, listen: false)
        .populateTopHeadlines();
  }

  // Widget myBuildListWidget(NewsArticleListViewModel value) {
  //   switch (value.loadingStatus) {
  //     case LoadingStatus.searching:
  //       return const Align(child: CircularProgressIndicator());
  //     case LoadingStatus.empty:
  //       return const Align(
  //         child: Text("No result found.."),
  //       );
  //     case LoadingStatus.completed:
  //       return Expanded(
  //         child: NewsList(newsArticleList: value.articles),
  //       );
  //   }
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
          return Column(
            children: [
              TextField(
                controller: _controller,
                onSubmitted: (val) {
                  print("value of entered text is: $val");
                  if (val.isEmpty == false) {
                    value.search(val);
                  }
                },
                decoration: InputDecoration(
                    labelText: "Enter the search term",
                    icon: const Padding(
                      padding: EdgeInsets.all(8),
                      child: Icon(Icons.search),
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        _controller.clear();
                      },
                      icon: const Icon(Icons.clear),
                    )),
              ),
              Expanded(
                child: NewsList(newsArticleList: value.articles),
              )
            ],
          );
        },
      ),
    );
  }
}
