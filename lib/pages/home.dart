import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_news/main.dart';

import 'package:smart_news/models/category.dart';
import 'package:smart_news/pages/data.dart';

import 'package:smart_news/pages/news_views.dart';

class HomePage extends StatefulWidget {
  final List<News> allNews;
  const HomePage({Key? key, required this.allNews}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int selectedCategoryIndex = 0;
  String _categoryDisplayed = 'All News';
  bool _isInitialAlign = true;
  bool _switchValue = false;
  final _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        child: Column(children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.07,
          ),
          Center(
              child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 50.0,
            child: Image.asset("assets/logo.png"),
          )),
          Padding(
            padding: EdgeInsets.only(top: 10.0),
          ),
          Text(
            "Smartnews",
            style: TextStyle(
                color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            width: double.infinity,
            height: 3,
            decoration: BoxDecoration(color: Colors.black),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.65,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "Copyright-" +
                  DateTime.now().year.toString() +
                  " | Smart Touch Group",
              style: TextStyle(
                  color: Color(0xFF182952), fontWeight: FontWeight.bold),
            ),
          ),
        ]),
      ),
      backgroundColor: Color(0xFFf0f8ff),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            HeightSpace,
            //CategorySection
            Container(
              decoration: BoxDecoration(color: Color(0xFF182952)),
              child: Column(
                children: [
                  AppBarSection(context),
                  Container(
                    decoration: BoxDecoration(),
                    width: double.infinity,
                    padding: EdgeInsets.all(10),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                          children: List.generate(categories.length, (index) {
                        Category category = categories[index];
                        bool isSelected = index == selectedCategoryIndex;

                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedCategoryIndex = index;
                              //_isInitialMargin = !_isInitialMargin;
                              if (selectedCategoryIndex == 0) {
                                _categoryDisplayed = 'All News';
                              }
                              if (selectedCategoryIndex == 1) {
                                _categoryDisplayed = 'ROBOTIQUE';
                              }
                              if (selectedCategoryIndex == 2) {
                                _categoryDisplayed = 'ANALYSIS';
                              }
                              if (selectedCategoryIndex == 3) {
                                _categoryDisplayed = 'TECH';
                              }
                              if (selectedCategoryIndex == 4) {
                                _categoryDisplayed = 'IA';
                              }

                              if (selectedCategoryIndex == 5) {
                                _categoryDisplayed = 'IOT';
                              }
                              if (selectedCategoryIndex == 6) {
                                _categoryDisplayed = 'INFORMATIQUE';
                              }
                              if (selectedCategoryIndex == 7) {
                                _categoryDisplayed = 'SECURITE';
                              }
                              if (selectedCategoryIndex == 8) {
                                _categoryDisplayed = 'FIREWALL';
                              }
                              if (selectedCategoryIndex == 9) {
                                _categoryDisplayed = 'TELEPHONE';
                              }
                            });
                          },
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 150),
                            decoration: BoxDecoration(),
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 15),
                            margin: EdgeInsets.symmetric(horizontal: 2),
                            child: Text(
                              category.name,
                              style: TextStyle(
                                  fontSize: 15,
                                  color: isSelected
                                      ? Colors.white
                                      : Color(0xFF8b93a8)),
                            ),
                          ),
                        );
                      })),
                    ),
                  ),
                  //.....................................................................
                ],
              ),
            ),
            HeightSpace,
            CarouselSection(
              allNews: widget.allNews,
            ),
            HeightSpace,
            TypeNewsSection(context),
            HeightSpace,
            NewsSection(context),
          ],
        ),
      ),
    );
  }

  Widget HeightSpace = SizedBox(height: 25);
  Widget AppBarSection(BuildContext context) => Container(
        margin: EdgeInsets.all(10),
        width: double.infinity,
        decoration: BoxDecoration(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
                onTap: () {
                  _scaffoldKey.currentState!.openDrawer();
                },
                child: Container(
                    decoration: BoxDecoration(),
                    child: Container(
                      child: Image.asset(
                        "assets/images/burger_icon.png",
                        color: Colors.white,
                        scale: 10,
                      ),
                    ))),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Smart",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.italic),
                ),
                Text(
                  "news",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.blue,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            Container(
              child: ElevatedButton(
                onPressed: () {},
                child: Text("DEVIS"),
                style: ElevatedButton.styleFrom(primary: Colors.blue),
              ),
            ),
          ],
        ),
      );

  Widget TypeNewsSection(BuildContext context) {
    Category category = categories[selectedCategoryIndex];
    return Container(
      padding: EdgeInsets.only(left: 5, right: 5),
      width: double.infinity,
      decoration: BoxDecoration(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(),
            child: Text(
              category.name,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                if (selectedCategoryIndex < categories.length - 1) {
                  selectedCategoryIndex++;

                  //_isInitialMargin = !_isInitialMargin;
                  if (selectedCategoryIndex == 0) {
                    _categoryDisplayed = 'All News';
                  }
                  if (selectedCategoryIndex == 1) {
                    _categoryDisplayed = 'ROBOTIQUE';
                  }
                  if (selectedCategoryIndex == 2) {
                    _categoryDisplayed = 'ANALYSIS';
                  }
                  if (selectedCategoryIndex == 3) {
                    _categoryDisplayed = 'TECH';
                  }
                  if (selectedCategoryIndex == 4) {
                    _categoryDisplayed = 'IA';
                  }

                  if (selectedCategoryIndex == 5) {
                    _categoryDisplayed = 'IOT';
                  }
                  if (selectedCategoryIndex == 6) {
                    _categoryDisplayed = 'INFORMATIQUE';
                  }
                  if (selectedCategoryIndex == 7) {
                    _categoryDisplayed = 'SECURITE';
                  }
                  if (selectedCategoryIndex == 8) {
                    _categoryDisplayed = 'FIREWALL';
                  }
                  if (selectedCategoryIndex == 9) {
                    _categoryDisplayed = 'TELEPHONE';
                  }
                }
              });
            },
            child: Container(
                height: 30,
                width: 50,
                decoration: BoxDecoration(),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xFF182952),
                      borderRadius: BorderRadius.circular(360)),
                  child: ClipRect(
                      child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 15,
                  )),
                )),
          )
        ],
      ),
    );
  }

  Widget NewsSection(BuildContext context) {
    return Dismissible(
        resizeDuration: null,
        onDismissed: (DismissDirection direction) {
          setState(() {
            if (selectedCategoryIndex < categories.length - 1) {
              selectedCategoryIndex +=
                  direction == DismissDirection.endToStart ? 1 : -1;

              //_isInitialMargin = !_isInitialMargin;
              if (selectedCategoryIndex == 0) {
                _categoryDisplayed = 'All News';
              }
              if (selectedCategoryIndex == 1) {
                _categoryDisplayed = 'ROBOTIQUE';
              }
              if (selectedCategoryIndex == 2) {
                _categoryDisplayed = 'ANALYSIS';
              }
              if (selectedCategoryIndex == 3) {
                _categoryDisplayed = 'TECH';
              }
              if (selectedCategoryIndex == 4) {
                _categoryDisplayed = 'IA';
              }

              if (selectedCategoryIndex == 5) {
                _categoryDisplayed = 'IOT';
              }
              if (selectedCategoryIndex == 6) {
                _categoryDisplayed = 'INFORMATIQUE';
              }
              if (selectedCategoryIndex == 7) {
                _categoryDisplayed = 'SECURITE';
              }
              if (selectedCategoryIndex == 8) {
                _categoryDisplayed = 'FIREWALL';
              }
              if (selectedCategoryIndex == 9) {
                _categoryDisplayed = 'TELEPHONE';
              }
            }
          });
        },
        key: new ValueKey(selectedCategoryIndex),
        child: AnimatedContainer(
            duration: Duration(seconds: 1),
            width: double.infinity,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...List.generate(widget.allNews.length, (index) {
                  if (widget.allNews[index].category == _categoryDisplayed) {
                    return NewsItem(
                        description:
                            widget.allNews[index].description.toString(),
                        source: widget.allNews[index].source.toString(),
                        link: widget.allNews[index].link.toString(),
                        color: widget.allNews[index].color,
                        publishedTime: widget.allNews[index].publishedTime,
                        category: widget.allNews[index].category,
                        title: widget.allNews[index].title,
                        img: widget.allNews[index].img);
                  } else if (_categoryDisplayed == "All News") {
                    widget.allNews.shuffle();
                    return NewsItem(
                        description:
                            widget.allNews[index].description.toString(),
                        source: widget.allNews[index].source.toString(),
                        link: widget.allNews[index].link.toString(),
                        color: widget.allNews[index].color,
                        publishedTime: widget.allNews[index].publishedTime,
                        category: widget.allNews[index].category,
                        title: widget.allNews[index].title,
                        img: widget.allNews[index].img);
                  } else {
                    return Align();
                  }
                })
              ],
            )));
  }
}

class NewsItem extends StatefulWidget {
  final Color? color;
  final DateTime? publishedTime;
  final String? category;
  final String? title;
  final String? img;
  final String? link;

  final String? description;
  final String? source;

  const NewsItem(
      {Key? key,
      required this.color,
      required this.publishedTime,
      required this.category,
      required this.description,
      required this.source,
      required this.link,
      required this.title,
      required this.img})
      : super(key: key);

  @override
  _NewsItemState createState() => _NewsItemState();
}

class _NewsItemState extends State<NewsItem> {
  String day(int day) {
    if (day == DateTime.now().day || day == DateTime.now().day - 1) {
      return "";
    } else {
      return day.toString();
    }
  }

  String mounth(int mounth, int day) {
    if (mounth == DateTime.now().month && day == DateTime.now().day) {
      return "aujourd'hui";
    } else if (mounth == DateTime.now().month &&
        day == DateTime.now().day - 1) {
      return "hier";
    } else {
      switch (mounth) {
        case 1:
          return "Janvier";

        case 2:
          return "Février";
        case 3:
          return "Mars";

        case 4:
          return "Avril";
        case 5:
          return "Mai";

        case 6:
          return "Juin";
        case 7:
          return "Juillet";

        case 8:
          return "Août";
        case 9:
          return "Septembre";

        case 10:
          return "Octobre";
        case 11:
          return "Novembre";

        case 12:
          return "Décembre";
      }
    }

    return "null";
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => NewsView(
                        title: widget.title.toString(),
                        description: widget.description.toString(),
                        image: widget.img.toString(),
                        link: widget.link.toString(),
                        source: widget.source.toString(),
                      )));
        },
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.only(top: 10),
          decoration: BoxDecoration(),
          child: Row(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.188,
                width: MediaQuery.of(context).size.width * 0.35,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [Colors.black, Colors.transparent]),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        bottomLeft: Radius.circular(5)),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(widget.img.toString()))),
              ),
              SizedBox(
                width: 2,
              ),
              Expanded(
                  child: Container(
                padding: EdgeInsets.all(10),
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width * 0.35,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(5),
                      bottomRight: Radius.circular(5)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        width: double.infinity,
                        decoration: BoxDecoration(),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: widget.color!,
                                    borderRadius: BorderRadius.circular(5)),
                                child: Center(
                                  child: Text(
                                    widget.category!,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                    ),
                                  ),
                                )),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              decoration: BoxDecoration(),
                              child: Center(
                                child: Text(
                                  day(widget.publishedTime!.day) +
                                      " " +
                                      mounth(widget.publishedTime!.month,
                                          widget.publishedTime!.day) +
                                      " à " +
                                      widget.publishedTime!.hour.toString() +
                                      ":" +
                                      widget.publishedTime!.minute.toString(),
                                  style: TextStyle(
                                    color: Color(0xFF9ba9b4),
                                    fontSize: 13,
                                  ),
                                ),
                              ),
                            )
                          ],
                        )),
                    SizedBox(height: 5),
                    Expanded(
                        child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(),
                      child: Text(
                        widget.title!,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ))
                  ],
                ),
              )),
            ],
          ),
        ));
  }
}

class CarouselSection extends StatefulWidget {
  final List<News> allNews;
  const CarouselSection({Key? key, required this.allNews}) : super(key: key);

  @override
  _CarouselSectionState createState() => _CarouselSectionState();
}

class _CarouselSectionState extends State<CarouselSection> {
  @override
  Widget build(BuildContext context) {
    widget.allNews.shuffle();
    return CarouselSlider(
        items: [
          ...List.generate(widget.allNews.length, (index) {
            return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NewsView(
                                title: widget.allNews[index].title.toString(),
                                description: widget.allNews[index].description
                                    .toString(),
                                image: widget.allNews[index].img.toString(),
                                link: widget.allNews[index].link.toString(),
                                source: widget.allNews[index].source.toString(),
                              )));
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  child: Stack(
                    children: [
                      ClipRect(
                        child: Container(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * 0.5,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                  colors: [Colors.black, Colors.transparent]),
                              borderRadius: BorderRadius.circular(5),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      widget.allNews[index].img.toString()))),
                        ),
                      ),
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 80),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                      margin: EdgeInsets.only(left: 10),
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          color: widget.allNews[index].color,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Center(
                                        child: Text(
                                          widget.allNews[index].category!,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                          ),
                                        ),
                                      )),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(),
                                child: Text(
                                    widget.allNews[index].title!.length >= 140
                                        ? widget.allNews[index].title!
                                            .substring(0, 140)
                                        : widget.allNews[index].title!,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ],
                          )),
                    ],
                  ),
                ));
          })
        ],
        options: CarouselOptions(
          autoPlayInterval: Duration(seconds: 7),
          autoPlayCurve: Curves.fastOutSlowIn,
          autoPlay: true,
        ));
  }
}
