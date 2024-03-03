import 'dart:convert';

import 'package:newsapp/models/article_model.dart';
import 'package:http/http.dart' as http;

class ArticleModel {
  List<ArticleModel> news = [];

  Future<List<ArticleModel>> fetchNews() async {
  final url =
      Uri.parse('https://yahoo-finance15.p.rapidapi.com/api/v1/markets/news');
  final response = await http.get(
    url,
    headers: {
      'X-RapidAPI-Key': 'f5b7c862f5mshb2c068719cfe586p19b3d5jsn14edda5ae9b9',
      'X-RapidAPI-Host': 'yahoo-finance15.p.rapidapi.com',
    },
  );
  final responsebody = json.decode(response.body);
    print(responsebody);

 if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as List;
      news = data.map((article) => ArticleModel.fromJson(article)).toList();
      return news;
    } else {
      throw Exception('Failed to load news');
    }

  }
}
