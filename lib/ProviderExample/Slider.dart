import 'package:flutter/material.dart';
import 'package:listwidget/ProviderExample/state_slider.dart';
import 'package:provider/provider.dart';

class SliderComponent extends StatelessWidget {

  Widget build(BuildContext context) {

    final sliderState = Provider.of<SliderState>(context);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Center(
          child: Slider(
            min: 0,
            max: 10,
            value: sliderState.sliderValue,
            onChanged: (double value){
                sliderState.sliderValue = value;
            },
          ),
        ),
      ),
    );
  }
}