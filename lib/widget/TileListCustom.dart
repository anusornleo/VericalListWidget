import 'package:flutter/material.dart';

class TileListCustom extends StatefulWidget {
  String header;
  List<Map> items;
  TileListCustom(String header, List<Map> items) {
    this.header = header;
    this.items = items;
  }
  @override
  _TileListCustomState createState() => _TileListCustomState(header, items);
}

class _TileListCustomState extends State<TileListCustom> {
  String header; // header get value from class
  double tileHeight = 120; // height of each tile
  double tileBorderRadius = 10; // border radius of tile
  double gap = 10; // a gap beetween text, tile, image

  List<Map> items;
  _TileListCustomState(String header, List<Map> items) {
    this.header = header;
    this.items = items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // white container
      body: SingleChildScrollView(
        child: Container(
          child: Stack(children: <Widget>[
            // Header
            Container(
              child: Text(
                header,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              margin: const EdgeInsets.only(
                  top: 20.0, left: 10.0, right: 10.0, bottom: 20.0),
            ),

            // Listview builder
            Container(
              margin: EdgeInsets.only(top: 25),
              child: ListView.builder(
                  physics: new NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: items.length,
                  itemBuilder: (BuildContext context, int index) {
                    return tile(
                        items[index]["title"],
                        items[index]["subtitle1"],
                        items[index]["price"].toString(),
                        items[index]["img_url"]);
                  }),
            ),
          ]),
          margin: EdgeInsets.only(left: gap, right: gap, top: gap, bottom: gap),
          padding: EdgeInsets.only(bottom: gap),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius:
                new BorderRadius.all(Radius.circular(tileBorderRadius)),
          ),
        ),
      ),
      backgroundColor: Colors.grey[200],
    );
  }

// Cusetom Tile
  Widget tile(String title, String subtitle, String price, String url) {
    return Container(
      child: Stack(
        children: <Widget>[
          // Image product
          Container(
            height: tileHeight,
            width: tileHeight,
            decoration: new BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(url),
                fit: BoxFit.cover,
              ),
              color: Colors.green,
              borderRadius:
                  new BorderRadius.all(Radius.circular(tileBorderRadius)),
            ),
          ),

          // Title
          Positioned(
            child: Text(
              title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            left: 130,
            top: 10,
          ),

          // Subtitle
          Positioned(
            child: Text(
              subtitle,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
            ),
            left: 130,
            top: 40,
          ),

          // Price
          Positioned(
            child: Text(
              "THB " + price,
              style: TextStyle(
                  fontSize: 22, fontWeight: FontWeight.bold, color: Colors.red),
            ),
            left: 130,
            top: 70,
          ),

          // Buy button
          Positioned(
            child: FlatButton(
                color: Colors.red[200],
                textColor: Colors.red,
                disabledColor: Colors.red[100],
                disabledTextColor: Colors.red,
                padding: EdgeInsets.all(8.0),
                splashColor: Colors.blueAccent,
                child: new Text("Buy Now"),
                onPressed: null,
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0))),
            right: 10,
            top: 70,
          )
        ],
        alignment: Alignment.centerLeft,
      ),
      height: tileHeight,
      margin: const EdgeInsets.only(
          top: 10.0, left: 10.0, right: 10.0, bottom: 0.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: new BorderRadius.all(Radius.circular(10.0)),
      ),
    );
  }
}
