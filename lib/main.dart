import "package:flutter/material.dart";

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
        body: const Text("Latest News will be displayed here"),
      ),
    );
  }
}