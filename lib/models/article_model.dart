class ArticleModel {
  final String guid;
  final String link;
  final String pubDate;
  final String source;
  final String title;

  // Constructor with a factory for easier JSON parsing
  ArticleModel({
    required this.guid,
    required this.link,
    required this.pubDate,
    required this.source,
    required this.title,
  });

  factory ArticleModel.fromJson(Map<String, dynamic> json) {
    return ArticleModel(
      guid: json['guid'],
      link: json['link'],
      pubDate: json['pubDate'],
      source: json['source'],
      title: json['title'],
    );
  }
}
