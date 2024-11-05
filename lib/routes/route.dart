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
      case ForgotPasswordPage.id:
        return materialPageRoute(const ForgotPasswordPage());
      case ResetOtpPage.id:
        return materialPageRoute(const ResetOtpPage());
      case EnterNewPasswordPage.id:
        return materialPageRoute(const EnterNewPasswordPage());
      case PasswordResetSuccessScreen.id:
        return materialPageRoute(const PasswordResetSuccessScreen());
      case ProfileSetUpScreen.id:
        return materialPageRoute(const ProfileSetUpScreen());

      default:
        return materialPageRoute(const OnboardingScreen());
    }
  }
}
