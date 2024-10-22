import 'package:cloth_shopping_app/constants/padding.dart';
import 'package:cloth_shopping_app/routes/exports.dart';
import 'package:cloth_shopping_app/views/components/app_styles.dart';
import 'package:cloth_shopping_app/views/components/elevated_button.dart';
import 'package:cloth_shopping_app/views/components/input_field.dart';
import 'package:cloth_shopping_app/views/components/label_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../constants/colors.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  static const id = "signInPage";
  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: heightQuery(context) * 0.3,
              color: Colors.green,
            ),
            const Gap(20),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome !!!",
                          style: textStyle(
                              size: 24,
                              color: blackColor,
                              weight: FontWeight.w500),
                        ),
                        const Gap(5),
                        Text("Log in to continue enjoying our exclusive offers",
                            style: textStyle(
                                size: 16,
                                color: blackColor40,
                                weight: FontWeight.w500)),
                        const Gap(20),
                        const LabelText(labelText: "Email"),
                        CustomTextField(
                          controller: controller,
                          hintText: "Email address",
                          prefixIcon: Icons.mail,
                        ),
                        const Gap(15),
                        const LabelText(labelText: "Password"),
                        CustomTextField(
                          controller: controller,
                          hintText: "Password",
                          prefixIcon: Icons.lock,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: TextButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, ForgotPasswordPage.id);
                            },
                            child: const Text("Forgot Password??"),
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: Column(
                        children: [
                          CustomElevatedButton(
                              onPressed: () {},
                              backColor: primaryColor,
                              child: Text(
                                "Log In",
                                style: textStyle(color: whiteColor),
                              )),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Don't have an account?",
                                style: textStyle(color: blackColor40),
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, SignUpPage.id);
                                  },
                                  child: const Text("Sign up"))
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
