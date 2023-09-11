import "package:flutter/material.dart";
import "package:news_app_practice/pages/news_list.dart";
import "package:news_app_practice/services/web_services.dart";
import "package:news_app_practice/viewModels/news_article_list_view_model.dart";
import "package:provider/provider.dart";

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    // return ChangeNotifierProvider(
    //   create: (context) => NewsArticleListViewModel(),
    //   child: MaterialApp(
    //     title: "News App",
    //     theme: ThemeData(
    //         // primarySwatch: Colors.teal,
    //         ),

    //     // body: const Text("Latest News will be displayed here"),
    //     home: NewsList(),
    //   ),
    // );
    return MaterialApp(
      title: "News App",
      theme: ThemeData(
          // primarySwatch: Colors.teal,
          ),
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider(
        create: (context) => NewsArticleListViewModel(),
        child: NewsList(),
      ),
    );
  }
}
