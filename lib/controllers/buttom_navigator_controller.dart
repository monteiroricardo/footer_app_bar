import 'package:flutter/material.dart';

class ButtonNavigatorController extends ChangeNotifier {
  int currentIndex = 0;

  void setCurrentIndex(int value) {
    currentIndex = value;
    notifyListeners();
  }
}
