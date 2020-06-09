import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:listwidget/BottomModalSheet/CartPageTest.dart';
import 'package:listwidget/ProviderExample/ProviderExample.dart';
import 'package:listwidget/widget/TileListCustom.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Mockup data

  List<Map> items = [
    {
      "title": "Title1",
      "subtitle1": "Subtitle",
      "price": 10,
      "img_url":
          "https://www.top10.in.th/wp-content/uploads/2020/02/%E0%B8%AA%E0%B8%A1%E0%B8%B2%E0%B8%A3%E0%B9%8C%E0%B8%97%E0%B8%97%E0%B8%B5%E0%B8%A7%E0%B8%B5-%E0%B8%A2%E0%B8%B5%E0%B9%88%E0%B8%AB%E0%B9%89%E0%B8%AD%E0%B9%84%E0%B8%AB%E0%B8%99%E0%B8%94%E0%B8%B5.jpg"
    },
    {
      "title": "Title2",
      "subtitle1": "Subtitle",
      "price": 10,
      "img_url":
          "https://www.top10.in.th/wp-content/uploads/2020/02/%E0%B8%AA%E0%B8%A1%E0%B8%B2%E0%B8%A3%E0%B9%8C%E0%B8%97%E0%B8%97%E0%B8%B5%E0%B8%A7%E0%B8%B5-%E0%B8%A2%E0%B8%B5%E0%B9%88%E0%B8%AB%E0%B9%89%E0%B8%AD%E0%B9%84%E0%B8%AB%E0%B8%99%E0%B8%94%E0%B8%B5.jpg"
    },
    {
      "title": "Title3",
      "subtitle1": "Subtitle",
      "price": 10,
      "img_url":
          "https://www.top10.in.th/wp-content/uploads/2020/02/%E0%B8%AA%E0%B8%A1%E0%B8%B2%E0%B8%A3%E0%B9%8C%E0%B8%97%E0%B8%97%E0%B8%B5%E0%B8%A7%E0%B8%B5-%E0%B8%A2%E0%B8%B5%E0%B9%88%E0%B8%AB%E0%B9%89%E0%B8%AD%E0%B9%84%E0%B8%AB%E0%B8%99%E0%B8%94%E0%B8%B5.jpg"
    },
    {
      "title": "Title4",
      "subtitle1": "Subtitle",
      "price": 10,
      "img_url":
          "https://www.top10.in.th/wp-content/uploads/2020/02/%E0%B8%AA%E0%B8%A1%E0%B8%B2%E0%B8%A3%E0%B9%8C%E0%B8%97%E0%B8%97%E0%B8%B5%E0%B8%A7%E0%B8%B5-%E0%B8%A2%E0%B8%B5%E0%B9%88%E0%B8%AB%E0%B9%89%E0%B8%AD%E0%B9%84%E0%B8%AB%E0%B8%99%E0%B8%94%E0%B8%B5.jpg"
    },
    {
      "title": "Title5",
      "subtitle1": "Subtitle",
      "price": 10,
      "img_url":
          "https://www.top10.in.th/wp-content/uploads/2020/02/%E0%B8%AA%E0%B8%A1%E0%B8%B2%E0%B8%A3%E0%B9%8C%E0%B8%97%E0%B8%97%E0%B8%B5%E0%B8%A7%E0%B8%B5-%E0%B8%A2%E0%B8%B5%E0%B9%88%E0%B8%AB%E0%B9%89%E0%B8%AD%E0%B9%84%E0%B8%AB%E0%B8%99%E0%B8%94%E0%B8%B5.jpg"
    },
    {
      "title": "Title6",
      "subtitle1": "Subtitle",
      "price": 10,
      "img_url":
          "https://www.top10.in.th/wp-content/uploads/2020/02/%E0%B8%AA%E0%B8%A1%E0%B8%B2%E0%B8%A3%E0%B9%8C%E0%B8%97%E0%B8%97%E0%B8%B5%E0%B8%A7%E0%B8%B5-%E0%B8%A2%E0%B8%B5%E0%B9%88%E0%B8%AB%E0%B9%89%E0%B8%AD%E0%B9%84%E0%B8%AB%E0%B8%99%E0%B8%94%E0%B8%B5.jpg"
    },
    {
      "title": "Title7",
      "subtitle1": "Subtitle",
      "price": 10,
      "img_url":
          "https://www.top10.in.th/wp-content/uploads/2020/02/%E0%B8%AA%E0%B8%A1%E0%B8%B2%E0%B8%A3%E0%B9%8C%E0%B8%97%E0%B8%97%E0%B8%B5%E0%B8%A7%E0%B8%B5-%E0%B8%A2%E0%B8%B5%E0%B9%88%E0%B8%AB%E0%B9%89%E0%B8%AD%E0%B9%84%E0%B8%AB%E0%B8%99%E0%B8%94%E0%B8%B5.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Leo Test App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("Custom ListView"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => TileListCustom("Sales", items)),
                );
              },
            ),
            RaisedButton(
              child: Text("Provider Test"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProviderExample()),
                );
              },
            ),
            RaisedButton(
              child: Text("Bottom modal sheet"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CartPageTest()),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
