import 'package:flutter/material.dart';
import 'package:listwidget/ProviderExample/state_slider.dart';
import 'package:provider/provider.dart';

class DisplayValue extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<SliderState>(
        builder: (context, sliderState, _) =>
            Text("Value = ${sliderState.sliderValue.toStringAsFixed(2)}"));
//        child: Text("Value = ${sliderValue.toStringAsFixed(2)}"));
  }
}
