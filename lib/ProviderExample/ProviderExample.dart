import 'package:flutter/material.dart';
import 'package:listwidget/ProviderExample/DisplayValue2.dart';
import 'package:listwidget/ProviderExample/state_slider.dart';
import 'package:provider/provider.dart';

import 'DisplayValue.dart';
import 'Slider.dart';

class ProviderExample extends StatefulWidget {
  @override
  _ProviderExampleState createState() => _ProviderExampleState();
}

class _ProviderExampleState extends State<ProviderExample> {

  double sliderValue = 5;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
//      builder: (_) => SliderState(),
      create: (_) => SliderState(),
      child: Scaffold(
        appBar: AppBar(title: Text(SliderState().sliderValue.toString())),
        body: Column(
          children: <Widget>[
            DisplayValue(),
            SliderComponent(),
            DisplayValue2()
          ],
        )
      ),
    );
  }
}



