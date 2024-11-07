import 'package:cloth_shopping_app/services/auth_helper.dart';
import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  static bool isLoading = false;

  login() {
    isLoading = true;
    notifyListeners();
    final response = AuthenticationHelper.logInUser();
    if (response == "") {
      // Navigator.pushNamed(context, routeName);
    }
  }
}
