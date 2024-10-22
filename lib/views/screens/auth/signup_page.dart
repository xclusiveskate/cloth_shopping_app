import 'package:cloth_shopping_app/constants/colors.dart';
import 'package:cloth_shopping_app/constants/padding.dart';
import 'package:cloth_shopping_app/views/components/app_styles.dart';
import 'package:cloth_shopping_app/views/components/custom_checkbox.dart';
import 'package:cloth_shopping_app/views/components/elevated_button.dart';
import 'package:cloth_shopping_app/views/components/input_field.dart';
import 'package:cloth_shopping_app/views/components/label_text.dart';
import 'package:cloth_shopping_app/views/screens/auth/login_page.dart';
import 'package:flutter/gestures.dart';
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
  bool isChecked = false;
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
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        "Create Account",
                        style: textStyle(
                            size: 24,
                            color: blackColor,
                            weight: FontWeight.w500),
                      ),
                      const Gap(3),
                      Text("Join Now for Premium Access to Exclusive offers!!'",
                          style: textStyle(
                              size: 14,
                              color: blackColor60,
                              weight: FontWeight.w500)),
                      const Gap(10),
                      const LabelText(labelText: "Email"),
                      CustomTextField(
                        controller: controller,
                        prefixIcon: Icons.mail,
                      ),
                      const Gap(10),
                      const LabelText(labelText: "Password"),
                      CustomTextField(
                        controller: controller,
                        prefixIcon: Icons.lock,
                        suffixIcon: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.visibility_sharp)),
                      ),
                      const Gap(15),
                      Row(
                        children: [
                          CustomCheckbox(
                              value: isChecked,
                              onChanged: (value) {
                                isChecked = value;
                                setState(() {});
                              }),
                          const Gap(5),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                    text: "I agree with the  ",
                                    style: textStyle(color: Colors.black)),
                                TextSpan(
                                    text: "terms of services",
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        print("Terms of service is here");
                                      },
                                    style: textStyle(color: Colors.blue)),
                                TextSpan(
                                    text: " and privacy policy",
                                    style: textStyle(color: Colors.black)),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  // const Text(
                  //     "I agree with the terms of services & privacy policy"),
                  const Spacer(),
                  Column(
                    children: [
                      CustomElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Continue",
                            style: textStyle(color: whiteColor),
                          )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Do you have an account?",
                            style: textStyle(color: blackColor40),
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.pushReplacementNamed(
                                    context, SignInPage.id);
                              },
                              child: const Text("Log in"))
                        ],
                      )
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
