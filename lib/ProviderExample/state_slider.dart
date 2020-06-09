import 'package:flutter/material.dart';

class SliderState with ChangeNotifier {
  double _sliderValue = 5;

  double get sliderValue => _sliderValue;

  set sliderValue(double value) {
    _sliderValue = value;
    notifyListeners();
  }
}