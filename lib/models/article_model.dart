class ArticleModel {
  final String? image;
  final String title;
  final String? subTitle;

  ArticleModel({this.image, required this.title, this.subTitle});

  factory ArticleModel.fromJson(json) {
    return ArticleModel(
      title: json['title'],
      image: json['urlToImage'],
      subTitle: json['description'],
    );
  }
}
