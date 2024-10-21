//create a function that takes in a parameter of type RouteSettings returning Route<dynamic
import 'package:cloth_shopping_app/routes/route_components.dart';
import 'package:flutter/material.dart';

import "exports.dart";

class RouteGenerator {
  static Route<dynamic> routes(RouteSettings settings) {
    switch (settings.name) {
      case OnboardingScreen.id:
        return materialPageRoute(const OnboardingScreen());
      case SetNotificationPermissionScreen.id:
        return materialPageRoute(const SetNotificationPermissionScreen());
      case SelectPreferredLangPage.id:
        return materialPageRoute(const SelectPreferredLangPage());
      case SignInPage.id:
        return materialPageRoute(const SignInPage());
      case SignUpPage.id:
        return materialPageRoute(const SignUpPage());

      default:
        return materialPageRoute(const OnboardingScreen());
    }
  }
}
