class ArticlesModel {
  final String? image;
  final String title;
  final String? subTitle;
  final String newsUrl;

  ArticlesModel(
      {required this.image,
      required this.title,
      required this.subTitle,
      required this.newsUrl});
  factory ArticlesModel.fromJson(json) {
    return ArticlesModel(
        image: json['urlToImage'],
        title: json['title'],
        subTitle: json['description'],
        newsUrl: json['url']);
  }
}
