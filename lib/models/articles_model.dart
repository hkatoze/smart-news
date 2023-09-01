import 'package:flutter/material.dart';
import 'source_model.dart';

class Company {
  Source? source;
  String? author;
  String? title;
  String? description = "dfdgg";
  String? url;
  String? urlToImage;
  DateTime? publishedAt;
  String? content;
  Company(
      {this.author,
      this.content,
      this.description,
      this.publishedAt,
      this.source,
      this.title,
      this.url,
      this.urlToImage});

  factory Company.fromJson(Map<String, dynamic> json) => Company(
      source: Source.fromJson(json['source']),
      author: json['author'],
      title: json['title'],
      description: json['description'],
      url: json['url'],
      urlToImage: json['urlToImage'],
      publishedAt: DateTime.parse(json['publishedAt']),
      content: json['content']);
}

class Robotique {
  Source? source;
  String? author;
  String? title;
  String? description = "dfdgg";
  String? url;
  String? urlToImage;
  DateTime? publishedAt;
  String? content;
  Robotique(
      {this.author,
      this.content,
      this.description,
      this.publishedAt,
      this.source,
      this.title,
      this.url,
      this.urlToImage});

  factory Robotique.fromJson(Map<String, dynamic> json) => Robotique(
      source: Source.fromJson(json['source']),
      author: json['author'],
      title: json['title'],
      description: json['description'],
      url: json['url'],
      urlToImage: json['urlToImage'],
      publishedAt: DateTime.parse(json['publishedAt']),
      content: json['content']);
}

class Analysis {
  Source? source;
  String? author;
  String? title;
  String? description = "dfdgg";
  String? url;
  String? urlToImage;
  DateTime? publishedAt;
  String? content;
  Analysis(
      {this.author,
      this.content,
      this.description,
      this.publishedAt,
      this.source,
      this.title,
      this.url,
      this.urlToImage});

  factory Analysis.fromJson(Map<String, dynamic> json) => Analysis(
      source: Source.fromJson(json['source']),
      author: json['author'],
      title: json['title'],
      description: json['description'],
      url: json['url'],
      urlToImage: json['urlToImage'],
      publishedAt: DateTime.parse(json['publishedAt']),
      content: json['content']);
}

class Tech {
  Source? source;
  String? author;
  String? title;
  String? description = "dfdgg";
  String? url;
  String? urlToImage;
  DateTime? publishedAt;
  String? content;
  Tech(
      {this.author,
      this.content,
      this.description,
      this.publishedAt,
      this.source,
      this.title,
      this.url,
      this.urlToImage});

  factory Tech.fromJson(Map<String, dynamic> json) => Tech(
      source: Source.fromJson(json['source']),
      author: json['author'],
      title: json['title'],
      description: json['description'],
      url: json['url'],
      urlToImage: json['urlToImage'],
      publishedAt: DateTime.parse(json['publishedAt']),
      content: json['content']);
}

class IA {
  Source? source;
  String? author;
  String? title;
  String? description = "dfdgg";
  String? url;
  String? urlToImage;
  DateTime? publishedAt;
  String? content;
  IA(
      {this.author,
      this.content,
      this.description,
      this.publishedAt,
      this.source,
      this.title,
      this.url,
      this.urlToImage});

  factory IA.fromJson(Map<String, dynamic> json) => IA(
      source: Source.fromJson(json['source']),
      author: json['author'],
      title: json['title'],
      description: json['description'],
      url: json['url'],
      urlToImage: json['urlToImage'],
      publishedAt: DateTime.parse(json['publishedAt']),
      content: json['content']);
}

class IOT {
  Source? source;
  String? author;
  String? title;
  String? description = "dfdgg";
  String? url;
  String? urlToImage;
  DateTime? publishedAt;
  String? content;
  IOT(
      {this.author,
      this.content,
      this.description,
      this.publishedAt,
      this.source,
      this.title,
      this.url,
      this.urlToImage});

  factory IOT.fromJson(Map<String, dynamic> json) => IOT(
      source: Source.fromJson(json['source']),
      author: json['author'],
      title: json['title'],
      description: json['description'],
      url: json['url'],
      urlToImage: json['urlToImage'],
      publishedAt: DateTime.parse(json['publishedAt']),
      content: json['content']);
}

class Informatic {
  Source? source;
  String? author;
  String? title;
  String? description = "dfdgg";
  String? url;
  String? urlToImage;
  DateTime? publishedAt;
  String? content;
  Informatic(
      {this.author,
      this.content,
      this.description,
      this.publishedAt,
      this.source,
      this.title,
      this.url,
      this.urlToImage});

  factory Informatic.fromJson(Map<String, dynamic> json) => Informatic(
      source: Source.fromJson(json['source']),
      author: json['author'],
      title: json['title'],
      description: json['description'],
      url: json['url'],
      urlToImage: json['urlToImage'],
      publishedAt: DateTime.parse(json['publishedAt']),
      content: json['content']);
}

class Security {
  Source? source;
  String? author;
  String? title;
  String? description = "dfdgg";
  String? url;
  String? urlToImage;
  DateTime? publishedAt;
  String? content;
  Security(
      {this.author,
      this.content,
      this.description,
      this.publishedAt,
      this.source,
      this.title,
      this.url,
      this.urlToImage});

  factory Security.fromJson(Map<String, dynamic> json) => Security(
      source: Source.fromJson(json['source']),
      author: json['author'],
      title: json['title'],
      description: json['description'],
      url: json['url'],
      urlToImage: json['urlToImage'],
      publishedAt: DateTime.parse(json['publishedAt']),
      content: json['content']);
}

class Phone {
  Source? source;
  String? author;
  String? title;
  String? description = "dfdgg";
  String? url;
  String? urlToImage;
  DateTime? publishedAt;
  String? content;
  Phone(
      {this.author,
      this.content,
      this.description,
      this.publishedAt,
      this.source,
      this.title,
      this.url,
      this.urlToImage});

  factory Phone.fromJson(Map<String, dynamic> json) => Phone(
      source: Source.fromJson(json['source']),
      author: json['author'],
      title: json['title'],
      description: json['description'],
      url: json['url'],
      urlToImage: json['urlToImage'],
      publishedAt: DateTime.parse(json['publishedAt']),
      content: json['content']);
}

class Firewall {
  Source? source;
  String? author;
  String? title;
  String? description = "dfdgg";
  String? url;
  String? urlToImage;
  DateTime? publishedAt;
  String? content;
  Firewall(
      {this.author,
      this.content,
      this.description,
      this.publishedAt,
      this.source,
      this.title,
      this.url,
      this.urlToImage});

  factory Firewall.fromJson(Map<String, dynamic> json) => Firewall(
      source: Source.fromJson(json['source']),
      author: json['author'],
      title: json['title'],
      description: json['description'],
      url: json['url'],
      urlToImage: json['urlToImage'],
      publishedAt: DateTime.parse(json['publishedAt']),
      content: json['content']);
}


