class NewsArticle{

  final String title;
  final String description;
  final String url;
  final String urlToImage;

  // NewsArticle({required this.title, required this.description, required this.url, required this.urlToImage});
  // NewsArticle(this.title, this.description, this.url, this.urlToImage);
  NewsArticle(String t, String d, String u, String ur) : title= t, description= d, url = u, urlToImage = ur;


}

class Temnp{

  NewsArticle obj = NewsArticle("dd", "dd", "dd", "dd");
  // NewsArticle obj2 = NewsArticle(title:"vsal", description:"thsi", url:"this" ,urlToImage:"this");
}