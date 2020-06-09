import 'package:flutter/material.dart';
import 'package:listwidget/ProviderExample/state_slider.dart';
import 'package:listwidget/pages/home.dart';

import 'ProviderExample/ProviderExample.dart';
import 'widget/TileListCustom.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "xx",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}
