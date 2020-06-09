import 'package:flutter/material.dart';
import 'package:listwidget/BottomModalSheet/CouponModel.dart';

import 'BottomSheetPanel.dart';

class CartPageTest extends StatefulWidget {
  @override
  _CartPageTestState createState() => _CartPageTestState();
}

class _CartPageTestState extends State<CartPageTest> {


  int ticket = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cart")),
      body: Center(
          child: RaisedButton(
              child: Text(ticket.toString()),
              onPressed: () {
                showModalBottomSheet(
                    backgroundColor: Colors.transparent,
                    isScrollControlled: true,
                    context: context,
                    builder: (context) {
                      return BottomSheetPanel(
                        onChanged: (int num) {
                          setState(() {
                            ticket += num;
                          });
                        },
                      );
                    });
              })),
    );
  }
}
