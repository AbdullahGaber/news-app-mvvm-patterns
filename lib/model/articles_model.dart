import './article_model.dart';

class Articles {
  final List<Article?>? articles;

  Articles({
    this.articles,
  });

  factory Articles.fromJson(Map<String, dynamic> data) =>
      Articles(articles: data['articles']);
}
