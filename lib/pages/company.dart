import "package:flutter/material.dart";
import 'package:web_scraper/web_scraper.dart';

class CompanyZone extends StatefulWidget {
  const CompanyZone({Key? key}) : super(key: key);

  @override
  _CompanyZoneState createState() => _CompanyZoneState();
}

class _CompanyZoneState extends State<CompanyZone> {
  List<dynamic> data = [];

  _getData() async {
    final webScraper = WebScraper('https://smt-group.net');
    if (await webScraper.loadWebPage('/rpa-au-service-de-la-transformation-digitale/')) {
      List<Map<String, dynamic>> results =
          webScraper.getElement('div.breadcrumb-heading', []);

      setState(() {
        data.add(results[0]);
      });
      print(data);
    }
  }

  @override
  Widget build(BuildContext context) {
    _getData();

    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
      ),
      margin: EdgeInsets.symmetric(vertical: 100),
      child: Stack(
        children: [
          ClipRect(
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [Colors.black, Colors.transparent]),
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://smt-group.net/wp-content/uploads/2021/02/cropped-cropped-Logo-final-bleu-ciel-1.png"))),
            ),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 80),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          margin: EdgeInsets.only(left: 10),
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(5)),
                          child: Center(
                            child: Text(
                              "IT Technologies",
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
                    child: Text("Ici le titre",
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
  }
}
