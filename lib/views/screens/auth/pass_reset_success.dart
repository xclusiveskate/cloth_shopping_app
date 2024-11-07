import 'package:cloth_shopping_app/constants/colors.dart';
import 'package:cloth_shopping_app/routes/exports.dart';
import 'package:cloth_shopping_app/views/components/app_styles.dart';
import 'package:cloth_shopping_app/views/components/elevated_button.dart';
import 'package:flutter/material.dart';

class PasswordResetSuccessScreen extends StatelessWidget {
  const PasswordResetSuccessScreen({super.key});

  static const id = "passwordResetSuccessScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // const Spacer(),
              Container(
                child: Image.asset(
                  "assets/images/shield.png",
                  height: 500,
                ),
              ),
              Text(
                "Your password has been changed successfully!",
                style: textStyle(size: 14, weight: FontWeight.w400),
              ),
              CustomElevatedButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, SignInPage.id, (route) => false);
                  },
                  child: Text(
                    "Log in",
                    style: textStyle(
                        color: whiteColor, size: 14, weight: FontWeight.w600),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
