import 'package:flutter/material.dart';

class OnboardingProvider extends ChangeNotifier {
  int _pageIndex = 0;

  final PageController _contoller = PageController();

  int get pageIndex => _pageIndex;

  set changeIndex(int newIndex) {
    _pageIndex = newIndex;
    notifyListeners();
  }

  PageController get controller => _contoller;
}
