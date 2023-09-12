class Constant {
  static String topHeadlinesUrl =
      "https://newsapi.org/v2/top-headlines?country=us&apiKey=b91ef55ded2b4d8d9bdbfd8c99d74eb8";

  static String getHeadlines(String keyword) {
    return "https://newsapi.org/v2/everything?q=$keyword&apiKey=b91ef55ded2b4d8d9bdbfd8c99d74eb8";
  }
}
