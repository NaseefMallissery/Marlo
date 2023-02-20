import 'package:flutter/material.dart';

class BottomProvider extends ChangeNotifier {
  int currentIndex = 0;

  int currentIndexsearch() {
    return currentIndex;
    
  }

  void newIndex(int newIndex) {
    currentIndex = newIndex;
    notifyListeners();
  }
}
