import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:listwidget/ProviderExample/state_slider.dart';
import 'package:provider/provider.dart';

class DisplayValue2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        color: Colors.lime,
        child: buildConsumer(),
      ),
    );
  }

  Consumer<SliderState> buildConsumer() {
    return Consumer<SliderState>(
        builder: (BuildContext context, SliderState value, _) =>
            showText(value),
      );
  }

  Text showText(SliderState value) => Text("${value.sliderValue}");

  void printValue() {
    print("${SliderState().sliderValue}");
  }
}
