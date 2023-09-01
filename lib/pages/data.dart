import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_news/models/articles_model.dart';
import 'package:smart_news/pages/home.dart';
import 'package:smart_news/pages/splashScreen.dart';


class News {
  final Color? color;
  final String? description;
  final DateTime? publishedTime;
  final String? category;
  final String? title;
  final String? img;
  final String? link;
  final String? source;

  const News(
      {required this.color,
      required this.source,
      required this.link,
      required this.description,
      required this.publishedTime,
      required this.category,
      required this.title,
      required this.img});
}

class Data extends StatefulWidget {
  const Data({Key? key}) : super(key: key);

  @override
  _DataState createState() => _DataState();
}

class _DataState extends State<Data> {
  @override
  Widget build(BuildContext context) {
    List<News> allNews = [];
    
    final List<Robotique> robotique = Provider.of<List<Robotique>>(context);
    final List<Informatic> informatic = Provider.of<List<Informatic>>(context);
    final List<IA> ia = Provider.of<List<IA>>(context);
    final List<IOT> iot = Provider.of<List<IOT>>(context);
    final List<Phone> phone = Provider.of<List<Phone>>(context);
    final List<Firewall> firewall = Provider.of<List<Firewall>>(context);
    final List<Security> security = Provider.of<List<Security>>(context);
    final List<Analysis> analysis = Provider.of<List<Analysis>>(context);
    final List<Tech> tech = Provider.of<List<Tech>>(context);




    for (int i = 0; i < robotique.length; i++) {
      allNews.add(
        News(
            color: Color(0xFFff355d),
            publishedTime: robotique[i].publishedAt,
            category: "ROBOTIQUE",
            description: robotique[i].description,
            source: robotique[i].source!.name.toString(),
            link: robotique[i].url,
            title: robotique[i].title,
            img: robotique[i].urlToImage),
      );
    }

    for (int i = 0; i < tech.length; i++) {
      allNews.add(
        News(
            color: Color(0xFF00c853),
            publishedTime: tech[i].publishedAt,
            category: "TECH",
            description: tech[i].description,
            source: tech[i].source!.name,
            link: tech[i].url,
            title: tech[i].title,
            img: tech[i].urlToImage),
      );
    }

    for (int i = 0; i < analysis.length; i++) {
      allNews.add(
        News(
            color: Color(0xFF651fff),
            publishedTime: analysis[i].publishedAt,
            category: "ANALYSIS",
            description: analysis[i].description,
            source: analysis[i].source!.name,
            link: analysis[i].url,
            title: analysis[i].title,
            img: analysis[i].urlToImage),
      );
    }

    for (int i = 0; i < ia.length; i++) {
      allNews.add(
        News(
            color: Color(0xFFffb620),
            publishedTime: ia[i].publishedAt,
            category: "IA",
            description: ia[i].description,
            source: ia[i].source!.name,
            link: ia[i].url,
            title: ia[i].title,
            img: ia[i].urlToImage),
      );
    }

    for (int i = 0; i < iot.length; i++) {
      allNews.add(
        News(
            color: Color(0xFF651fff),
            publishedTime: iot[i].publishedAt,
            category: "IOT",
            title: iot[i].title,
            description: iot[i].description,
            link: iot[i].url,
            source: iot[i].source!.name.toString(),
            img: iot[i].urlToImage),
      );
    }

    for (int i = 0; i < informatic.length; i++) {
      allNews.add(
        News(
            color: Color(0xFF00c853),
            publishedTime: informatic[i].publishedAt,
            category: "INFORMATIQUE",
            description: informatic[i].description,
            link: informatic[i].url,
            source: informatic[i].source!.name,
            title: informatic[i].title,
            img: informatic[i].urlToImage),
      );
    }

    for (int i = 0; i < security.length; i++) {
      allNews.add(
        News(
            color: Color(0xFFffb620),
            publishedTime: security[i].publishedAt,
            category: "SECURITE",
            description: security[i].description,
            source: security[i].source!.name,
            link: security[i].url,
            title: security[i].title,
            img: security[i].urlToImage),
      );
    }

    for (int i = 0; i < firewall.length; i++) {
      allNews.add(
        News(
            color: Color(0xFFff355d),
            publishedTime: firewall[i].publishedAt,
            category: "FIREWALL",
            description: firewall[i].description,
            source: firewall[i].source!.name,
            link: firewall[i].url,
            title: firewall[i].title,
            img: firewall[i].urlToImage),
      );
    }

    for (int i = 0; i < phone.length; i++) {
      allNews.add(
        News(
            color: Color(0xFF651fff),
            publishedTime: phone[i].publishedAt,
            category: "TELEPHONE",
            description: phone[i].description,
            link: phone[i].url,
            source: phone[i].source!.name,
            title: phone[i].title,
            img: phone[i].urlToImage),
      );
    }
    return HomePage(allNews: allNews);
  }
}

class StaticValues {
  List<Robotique> robotique = [
    Robotique(
      title: "News non accessible pour le moment",
      description:
          "New Delhi: Major cryptocurrencies were trading higher on Friday. Eight out of the top 10 digital tokens were trading with solid gains at 9.30 hours IST, led by Dogecoin which gained as much as 25 per cent.The heads of some of the world’s biggest cryptocurrency exchanges say Bitcoin miners are shifting operations out of China as authorities intensify their crackdown on the space. China’s moves had injected uncertainty into the cryptocurrency market and helped pull Bitcoin down.",
      urlToImage:
          "https://e7.pngegg.com/pngimages/308/119/png-clipart-web-development-application-programming-interface-computer-icons-web-api-others-text-computer-program.png",
    ),
  ];
  List<Analysis> analysis = [
    Analysis(
      title: "News non accessible pour le moment",
      description:
          "New Delhi: Major cryptocurrencies were trading higher on Friday. Eight out of the top 10 digital tokens were trading with solid gains at 9.30 hours IST, led by Dogecoin which gained as much as 25 per cent.The heads of some of the world’s biggest cryptocurrency exchanges say Bitcoin miners are shifting operations out of China as authorities intensify their crackdown on the space. China’s moves had injected uncertainty into the cryptocurrency market and helped pull Bitcoin down.",
      urlToImage:
          "https://e7.pngegg.com/pngimages/308/119/png-clipart-web-development-application-programming-interface-computer-icons-web-api-others-text-computer-program.png",
    ),
  ];
  List<Tech> tech = [
    Tech(
      title: "News non accessible pour le moment",
      description:
          "New Delhi: Major cryptocurrencies were trading higher on Friday. Eight out of the top 10 digital tokens were trading with solid gains at 9.30 hours IST, led by Dogecoin which gained as much as 25 per cent.The heads of some of the world’s biggest cryptocurrency exchanges say Bitcoin miners are shifting operations out of China as authorities intensify their crackdown on the space. China’s moves had injected uncertainty into the cryptocurrency market and helped pull Bitcoin down.",
      urlToImage:
          "https://e7.pngegg.com/pngimages/308/119/png-clipart-web-development-application-programming-interface-computer-icons-web-api-others-text-computer-program.png",
    ),
  ];
  List<IA> ia = [
    IA(
      title: "News non accessible pour le moment",
      description:
          "New Delhi: Major cryptocurrencies were trading higher on Friday. Eight out of the top 10 digital tokens were trading with solid gains at 9.30 hours IST, led by Dogecoin which gained as much as 25 per cent.The heads of some of the world’s biggest cryptocurrency exchanges say Bitcoin miners are shifting operations out of China as authorities intensify their crackdown on the space. China’s moves had injected uncertainty into the cryptocurrency market and helped pull Bitcoin down.",
      urlToImage:
          "https://e7.pngegg.com/pngimages/308/119/png-clipart-web-development-application-programming-interface-computer-icons-web-api-others-text-computer-program.png",
    ),
  ];
  List<IOT> iot = [
    IOT(
      title: "News non accessible pour le moment",
      description:
          "New Delhi: Major cryptocurrencies were trading higher on Friday. Eight out of the top 10 digital tokens were trading with solid gains at 9.30 hours IST, led by Dogecoin which gained as much as 25 per cent.The heads of some of the world’s biggest cryptocurrency exchanges say Bitcoin miners are shifting operations out of China as authorities intensify their crackdown on the space. China’s moves had injected uncertainty into the cryptocurrency market and helped pull Bitcoin down.",
      urlToImage:
          "https://e7.pngegg.com/pngimages/308/119/png-clipart-web-development-application-programming-interface-computer-icons-web-api-others-text-computer-program.png",
    ),
  ];
  List<Informatic> informatic = [
    Informatic(
      title: "News non accessible pour le moment",
      description:
          "New Delhi: Major cryptocurrencies were trading higher on Friday. Eight out of the top 10 digital tokens were trading with solid gains at 9.30 hours IST, led by Dogecoin which gained as much as 25 per cent.The heads of some of the world’s biggest cryptocurrency exchanges say Bitcoin miners are shifting operations out of China as authorities intensify their crackdown on the space. China’s moves had injected uncertainty into the cryptocurrency market and helped pull Bitcoin down.",
      urlToImage:
          "https://e7.pngegg.com/pngimages/308/119/png-clipart-web-development-application-programming-interface-computer-icons-web-api-others-text-computer-program.png",
    ),
  ];
  List<Security> security = [
    Security(
      title: "News non accessible pour le moment",
      description:
          "New Delhi: Major cryptocurrencies were trading higher on Friday. Eight out of the top 10 digital tokens were trading with solid gains at 9.30 hours IST, led by Dogecoin which gained as much as 25 per cent.The heads of some of the world’s biggest cryptocurrency exchanges say Bitcoin miners are shifting operations out of China as authorities intensify their crackdown on the space. China’s moves had injected uncertainty into the cryptocurrency market and helped pull Bitcoin down.",
      urlToImage:
          "https://e7.pngegg.com/pngimages/308/119/png-clipart-web-development-application-programming-interface-computer-icons-web-api-others-text-computer-program.png",
    ),
  ];
  List<Firewall> firewall = [
    Firewall(
      title: "News non accessible pour le moment",
      description:
          "New Delhi: Major cryptocurrencies were trading higher on Friday. Eight out of the top 10 digital tokens were trading with solid gains at 9.30 hours IST, led by Dogecoin which gained as much as 25 per cent.The heads of some of the world’s biggest cryptocurrency exchanges say Bitcoin miners are shifting operations out of China as authorities intensify their crackdown on the space. China’s moves had injected uncertainty into the cryptocurrency market and helped pull Bitcoin down.",
      urlToImage:
          "https://e7.pngegg.com/pngimages/308/119/png-clipart-web-development-application-programming-interface-computer-icons-web-api-others-text-computer-program.png",
    ),
  ];
  List<Phone> phone = [
    Phone(
      title: "News non accessible pour le moment",
      description:
          "New Delhi: Major cryptocurrencies were trading higher on Friday. Eight out of the top 10 digital tokens were trading with solid gains at 9.30 hours IST, led by Dogecoin which gained as much as 25 per cent.The heads of some of the world’s biggest cryptocurrency exchanges say Bitcoin miners are shifting operations out of China as authorities intensify their crackdown on the space. China’s moves had injected uncertainty into the cryptocurrency market and helped pull Bitcoin down.",
      urlToImage:
          "https://e7.pngegg.com/pngimages/308/119/png-clipart-web-development-application-programming-interface-computer-icons-web-api-others-text-computer-program.png",
    ),
  ];
}
