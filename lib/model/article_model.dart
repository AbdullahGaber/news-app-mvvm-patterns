class Article {
  final String? title;
  final String? description;
  final String? imageUrl;
  final String? articleUrl;
  Article({
    this.title,
    this.description,
    this.imageUrl,
    this.articleUrl,
  });

  factory Article.fromJson(Map<String, dynamic> data) => Article(
    title: data['title'],
    articleUrl: data['url'],
    imageUrl: data['urlToImage'],
    description: data['description'],
  );
}
