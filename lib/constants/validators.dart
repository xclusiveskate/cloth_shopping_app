import 'package:email_validator/email_validator.dart';

class Validators {
  static String? validateEmail(String email) {
    if (email.isEmpty) {
      return "email required";
    } else if (!EmailValidator.validate(email)) {
      return "Invalid email address";
    } else {
      return null;
    }
  }

  static String? validatePassword(String password) {
    if (password.isEmpty) {
      return "password field required";
    } else if (password.length < 8) {
      return "password must be 8 char";
    } else {
      return null;
    }
  }
}
