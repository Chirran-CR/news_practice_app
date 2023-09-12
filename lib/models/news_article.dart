class NewsArticle {
  final String title;
  final String? description;
  final String url;
  final String? urlToImage;

  NewsArticle(
      {required this.title,
      required this.description,
      required this.url,
      required this.urlToImage});

  factory NewsArticle.fromJson(Map<String, dynamic> jsonMap) {
    return NewsArticle(
        title: jsonMap['title'],
        description: jsonMap["description"],
        url: jsonMap['url'],
        urlToImage: jsonMap['urlToImage']);
  }
  //----------Default Constructor------------------------------------------------

  //0th way
  // NewsArticle() : title= "d", description= "d", url = "u", urlToImage = "ud";

  //----------Parametrized Constructor-------------------------------------------

  //1st way
  // NewsArticle({required this.title, required this.description, required this.url, required this.urlToImage});
  //2nd way
  // NewsArticle(this.title, this.description, this.url, this.urlToImage);
  //3rd way
  // NewsArticle(String t, String d, String u, String ur) : title= t, description= d, url = u, urlToImage = ur;
  //4th way
  // NewsArticle({required String t, required String d, required String u, required String ur}): title = t, description = d, url = u, urlToImage =ur;

  //---------Named Constructor--------------------------------------------------

  // NewsArticle.new1() : title="tt", description = "dd", url= "UU", urlToImage = "ur";

  // NewsArticle.new2( this.title, this.description, this.url, this.urlToImage);

  // NewsArticle.new4({ required this.title, required this.description, required this.url, required this.urlToImage});

  // NewsArticle.new3(String t, String d, String u, String ur) : title = t, description = d, url = u, urlToImage = ur;

  // NewsArticle.new5({required String t,required  String d,required  String u,required  String ur}) : title = t, description = d, url = u, urlToImage = ur;

  // NewsArticle.new6(String? t, String? d) : title = t ?? "t", description = d ?? "d", url = "u", urlToImage = "ur";

  // NewsArticle.new7({String? t, String? d}) : title = t ?? "t", description = d ?? "d", url = "u", urlToImage = "ur";

  // NewsArticle.new8(String? t, {String? url, required String ur}) : title = t ?? "t", description = "d", url = url??"u", urlToImage = ur; //inside currly braces
  // //this.url is necessary then only it will refer to the property url

  // NewsArticle.new9(String? t, {this.url = "d", required String ur}) : title = t ?? "t", description = "d", urlToImage = ur;
}

// class Temnp {
//   // NewsArticle obj = NewsArticle("dd", "dd", "dd", "dd");
//   // NewsArticle obj2 = NewsArticle(title:"vsal", description:"thsi", url:"this" ,urlToImage:"this");
//   // NewsArticle obj2 = NewsArticle(t:"vsal", d:"thsi", u:"this" ,ur:"this");
//   NewsArticle ob3 = NewsArticle();

//   NewsArticle new5 = NewsArticle.new5(t: "t", d: "d", u: "u", ur: "ur");
//   NewsArticle new4 = NewsArticle.new4(
//       title: "t", description: "d", url: "U", urlToImage: "ur");
// }
