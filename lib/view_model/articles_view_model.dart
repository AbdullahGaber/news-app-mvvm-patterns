import 'package:flutter/foundation.dart';
import '../model/articles_model.dart';
import '../services/news_service.dart';

class ArticlesViewModel with ChangeNotifier {
  Articles? _articles;
  Articles? _articlesByCategory;

  Future<void> fetchNews() async {
    _articles = await NewsServices().fetchNews();
    notifyListeners();
  }

  Future<void> fetchNewsByCategory(String category) async {
    _articles = await NewsServices().fetchNewsByCategory(category);
    notifyListeners();
  }

  Articles? get articles => _articles;
  Articles? get articlesByCategory => _articlesByCategory;
}
