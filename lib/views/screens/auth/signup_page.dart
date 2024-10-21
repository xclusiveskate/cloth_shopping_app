import 'package:cloth_shopping_app/constants/colors.dart';
import 'package:cloth_shopping_app/constants/padding.dart';
import 'package:cloth_shopping_app/views/components/app_styles.dart';
import 'package:cloth_shopping_app/views/components/elevated_button.dart';
import 'package:cloth_shopping_app/views/components/input_field.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  static const id = "signUpPage";
  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: heightQuery(context) * 0.35,
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
            ),
            const Gap(20),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "Let's get started",
                    style: textStyle(
                        size: 24, color: blackColor, weight: FontWeight.w500),
                  ),
                  const Gap(5),
                  Text("Log in to continue enjoying our exclusive offers",
                      style: textStyle(
                          size: 16,
                          color: blackColor40,
                          weight: FontWeight.w500)),
                  const Gap(15),
                  CustomTextField(controller: controller),
                  const Gap(15),
                  CustomTextField(controller: controller),
                  const Gap(10),
                  const Text(
                      "I agree with the terms of services & privacy policy"),
                  const Gap(30),
                  CustomElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Continue",
                        style: textStyle(color: whiteColor),
                      )),
                  const Gap(5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Do you have an account?",
                        style: textStyle(color: blackColor40),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, SignUpPage.id);
                          },
                          child: const Text("Log in"))
                    ],
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
