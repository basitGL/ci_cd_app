import 'package:flutter/material.dart';

class CounterState with ChangeNotifier {
  int counter;
  CounterState(this.counter);

  void incrementCounter() {
    counter = counter + 1;
    notifyListeners();
  }
}
