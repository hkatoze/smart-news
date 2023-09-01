import 'dart:convert';



import 'package:smart_news/models/articles_model.dart';
import 'package:http/http.dart' as http;
import 'package:smart_news/pages/data.dart';

class ApiServices {
  Future<List<Robotique>> robotiqueArticle() async {
    final endPoint = Uri.parse(
        "https://newsapi.org/v2/everything?q=robotique&language=fr&sortBy=publishedAt&apiKey=914ecb0ed8aa4e7e9af97da52d8fc29c");

    var newsModel = null;
    try {
      final res = await http.Client().get(endPoint);

      if (res.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(res.body);
        List<dynamic> body = json['articles'];
        List<Robotique> newsModel =
            body.map((dynamic item) => Robotique.fromJson(item)).toList();

        return newsModel;
      }
      throw Exception('Some arbitrary error');
    } catch (Exception) {
      return StaticValues().robotique;
    }
  }

  Future<List<Analysis>> analysisArticle() async {
    final endPoint = Uri.parse(
        "https://newsapi.org/v2/everything?q=analyste&language=fr&sortBy=publishedAt&apiKey=914ecb0ed8aa4e7e9af97da52d8fc29c");

    var newsModel = null;
    try {
      final res = await http.Client().get(endPoint);

      if (res.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(res.body);
        List<dynamic> body = json['articles'];
        List<Analysis> newsModel =
            body.map((dynamic item) => Analysis.fromJson(item)).toList();

        return newsModel;
      }
      throw Exception('Some arbitrary error');
    } catch (Exception) {
      return StaticValues().analysis;
    }
  }

  Future<List<Tech>> techArticle() async {
    final endPoint = Uri.parse(
        "https://newsapi.org/v2/everything?q=technologie&language=fr&sortBy=publishedAt&apiKey=914ecb0ed8aa4e7e9af97da52d8fc29c");

    var newsModel = null;
    try {
      final res = await http.Client().get(endPoint);

      if (res.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(res.body);
        List<dynamic> body = json['articles'];
        List<Tech> newsModel =
            body.map((dynamic item) => Tech.fromJson(item)).toList();

        return newsModel;
      }
      throw Exception('Some arbitrary error');
    } catch (Exception) {
      return StaticValues().tech;
    }
  }

  Future<List<IA>> iaArticle() async {
    final endPoint = Uri.parse(
        "https://newsapi.org/v2/everything?q=intelligence&language=fr&sortBy=publishedAt&apiKey=914ecb0ed8aa4e7e9af97da52d8fc29c");

    var newsModel = null;
    try {
      final res = await http.Client().get(endPoint);

      if (res.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(res.body);
        List<dynamic> body = json['articles'];
        List<IA> newsModel =
            body.map((dynamic item) => IA.fromJson(item)).toList();

        return newsModel;
      }
      throw Exception('Some arbitrary error');
    } catch (Exception) {
      return StaticValues().ia;
    }
  }

  Future<List<IOT>> iotArticle() async {
    final endPoint = Uri.parse(
        "https://newsapi.org/v2/everything?q=iot&language=fr&sortBy=publishedAt&apiKey=914ecb0ed8aa4e7e9af97da52d8fc29c");

    var newsModel = null;
    try {
      final res = await http.Client().get(endPoint);

      if (res.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(res.body);
        List<dynamic> body = json['articles'];
        List<IOT> newsModel =
            body.map((dynamic item) => IOT.fromJson(item)).toList();

        return newsModel;
      }
      throw Exception('Some arbitrary error');
    } catch (Exception) {
      return StaticValues().iot;
    }
  }

  Future<List<Informatic>> informaticArticle() async {
    final endPoint = Uri.parse(
        "https://newsapi.org/v2/everything?q=informatique&language=fr&sortBy=publishedAt&apiKey=914ecb0ed8aa4e7e9af97da52d8fc29c");

    var newsModel = null;
    try {
      final res = await http.Client().get(endPoint);

      if (res.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(res.body);
        List<dynamic> body = json['articles'];
        List<Informatic> newsModel =
            body.map((dynamic item) => Informatic.fromJson(item)).toList();

        return newsModel;
      }
      throw Exception('Some arbitrary error');
    } catch (Exception) {
      return StaticValues().informatic;
    }
  }

  Future<List<Security>> securityArticle() async {
    final endPoint = Uri.parse(
        "https://newsapi.org/v2/everything?q=cyber&language=fr&sortBy=publishedAt&apiKey=914ecb0ed8aa4e7e9af97da52d8fc29c");

    var newsModel = null;
    try {
      final res = await http.Client().get(endPoint);

      if (res.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(res.body);
        List<dynamic> body = json['articles'];
        List<Security> newsModel =
            body.map((dynamic item) => Security.fromJson(item)).toList();

        return newsModel;
      }
      throw Exception('Some arbitrary error');
    } catch (Exception) {
      return StaticValues().security;
    }
  }

  Future<List<Phone>> phoneArticle() async {
    final endPoint = Uri.parse(
        "https://newsapi.org/v2/everything?q=smartphone&language=fr&sortBy=publishedAt&apiKey=914ecb0ed8aa4e7e9af97da52d8fc29c");

    var newsModel = null;
    try {
      final res = await http.Client().get(endPoint);

      if (res.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(res.body);
        List<dynamic> body = json['articles'];
        List<Phone> newsModel =
            body.map((dynamic item) => Phone.fromJson(item)).toList();

        return newsModel;
      }
      throw Exception('Some arbitrary error');
    } catch (Exception) {
      return StaticValues().phone;
    }
  }

  Future<List<Firewall>> firewallArticle() async {
    final endPoint = Uri.parse(
        "https://newsapi.org/v2/everything?q=firewall&language=fr&sortBy=publishedAt&apiKey=914ecb0ed8aa4e7e9af97da52d8fc29c");

    var newsModel = null;
    try {
      final res = await http.Client().get(endPoint);

      if (res.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(res.body);
        List<dynamic> body = json['articles'];
        List<Firewall> newsModel =
            body.map((dynamic item) => Firewall.fromJson(item)).toList();

        return newsModel;
      }
      throw Exception('Some arbitrary error');
    } catch (Exception) {
      return StaticValues().firewall;
    }
  }
}
