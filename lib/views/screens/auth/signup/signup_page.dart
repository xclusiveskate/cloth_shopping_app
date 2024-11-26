import 'package:cloth_shopping_app/constants/colors.dart';
import 'package:cloth_shopping_app/constants/padding.dart';
import 'package:cloth_shopping_app/constants/validators.dart';
import 'package:cloth_shopping_app/views/components/app_styles.dart';
import 'package:cloth_shopping_app/views/components/custom_checkbox.dart';
import 'package:cloth_shopping_app/views/components/elevated_button.dart';
import 'package:cloth_shopping_app/views/components/label_text.dart';
import 'package:cloth_shopping_app/views/components/text_form_field.dart';
import 'package:cloth_shopping_app/views/screens/auth/login/login_page.dart';
import 'package:cloth_shopping_app/views/screens/auth/signup/profile_setup.dart';
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
  final emailController = TextEditingController();
  final passController = TextEditingController();
  bool isChecked = false;
  bool isPassword = true;

  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Column(
            children: [
              Container(
                height: heightQuery(context) * 0.33,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              const Gap(20),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "Create Account",
                      style: textStyle(
                          size: 24, color: blackColor, weight: FontWeight.w500),
                    ),
                    const Gap(3),
                    Text("Join Now for Premium Access to Exclusive offers!!'",
                        style: textStyle(
                            size: 14,
                            color: blackColor60,
                            weight: FontWeight.w500)),
                    const Gap(10),
                    const Gap(20),
                    Form(
                        key: formKey,
                        child: Column(
                          children: [
                            const LabelText(labelText: "Email"),
                            const Gap(10),
                            CustomTextFormField(
                              controller: emailController,
                              prefixIcon: Icons.mail,
                              hintText: "email",
                              validator: (email) {
                                return Validators.validateEmail(email!);
                              },
                            ),
                            const LabelText(labelText: "Password"),
                            const Gap(10),
                            CustomTextFormField(
                              controller: passController,
                              prefixIcon: Icons.lock,
                              hintText: "password",
                              obscureText: isPassword,
                              validator: (password) {
                                return Validators.validatePassword(password!);
                              },
                              suffixIcon: IconButton(
                                  onPressed: onPressedSuffixIcon,
                                  icon: Icon(isPassword
                                      ? Icons.visibility
                                      : Icons.visibility_off)),
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
                                  softWrap: true,
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                          text: "I agree with the  ",
                                          style:
                                              textStyle(color: Colors.black)),
                                      TextSpan(
                                          text: "terms of services",
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              print("Terms of service is here");
                                            },
                                          style: textStyle(color: Colors.blue)),
                                      TextSpan(
                                          text: " and privacy policy",
                                          style:
                                              textStyle(color: Colors.black)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )),
                    Gap(heightQuery(context) > 700
                        ? heightQuery(context) * 0.12
                        : 20),
                    Column(
                      children: [
                        CustomElevatedButton(
                            onPressed: () {
                              if (formKey.currentState!.validate() &&
                                  isChecked == true) {
                                Navigator.pushReplacementNamed(
                                    context, ProfileSetUpScreen.id);
                              }
                            },
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
              )
            ],
          ),
        ),
      ),
    );
  }

  void onPressedSuffixIcon() {
    setState(() {
      isPassword = !isPassword;
    });
  }
}
