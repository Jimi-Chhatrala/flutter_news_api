import 'dart:convert';

import '../model/article.dart';
import 'package:http/http.dart';
import 'package:news_api_1/service/api_service.dart';

class ApiService {
  final endpoint =
      "https://newsapi.org/v2/everything?q=tesla&from=2022-07-06&sortBy=publishedAt&apiKey=07fc11f8cfb54ad5b9034fe4cceb333a";

  Future<List<Article>> getArticle() async {
    Response response = await get(Uri.parse(endpoint));

    if (response.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(response.body);
      List<dynamic> body = json['articles'];
      List<Article> articles =
          body.map((dynamic item) => Article.fromJson(item)).toList();
      return articles;
    } else {
      throw ('Data has error');
    }
  }
}
