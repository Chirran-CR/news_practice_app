import "package:flutter/material.dart";
import "package:news_app_practice/services/web_services.dart";

void main(){
  runApp(App());
}

class App extends StatelessWidget{
  const App({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "News App",
      theme:ThemeData(
        // primarySwatch: Colors.teal,
      ),
      home:Scaffold(
        appBar: AppBar(
          title:const Text("Latest News"),
          backgroundColor: Colors.teal,
        ),
        // body: const Text("Latest News will be displayed here"),
        body:const Mytesting(),
      ),
    );
  }
}

class Mytesting extends StatelessWidget {
  const Mytesting({super.key});

  @override
  Widget build(BuildContext context) {
    WebServices().fetchTopHeadlines();
    return const Placeholder();
  }
}