import 'dart:convert';
import '../model/articles_model.dart';
import 'package:http/http.dart' as http;

class NewsServices {
  Future<Articles?> fetchNews() async {
    try {
      http.Response response = await http.get(
        Uri.parse(
          'https://newsapi.org/v2/top-headlines?country=eg&apiKey=b69802d0582b4e4b82c31bcd9e9fd7b2',
        ),
      );
      if (response.statusCode == 200) {
        var jsonData = jsonDecode(response.body);
        var model = Articles.fromJson(jsonData);
        return model;
      }
    } catch (ex) {
      print(ex);
    }
  }
  Future<Articles?> fetchNewsByCategory(String category) async {
    try {
      http.Response response = await http.get(
        Uri.parse(
          'https://newsapi.org/v2/top-headlines?country=eg&category=$category&apiKey=b69802d0582b4e4b82c31bcd9e9fd7b2',
        ),
      );
      if (response.statusCode == 200) {
        var jsonData = jsonDecode(response.body);
        var model = Articles.fromJson(jsonData);
        return model;
      }
    } catch (ex) {
      print(ex);
    }
  }
}
