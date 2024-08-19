import 'package:flutter/material.dart';

class CounterState with ChangeNotifier {
  int counter = 0;
  CounterState();

  void incrementCounter() {
    counter = counter + 1;
    notifyListeners();
  }
}
