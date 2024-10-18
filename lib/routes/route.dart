//create a function that takes in a parameter of type RouteSettings returning Route<dynamic
import 'package:flutter/material.dart';

import "exports.dart";

class RouteGenerator {
  static Route<dynamic> routes(RouteSettings settings) {
    switch (settings.name) {
      case OnboardingScreen.id:
        return MaterialPageRoute(
            builder: (context) => const OnboardingScreen());

      default:
        return MaterialPageRoute(
            builder: (context) => const OnboardingScreen());
    }
  }
}
