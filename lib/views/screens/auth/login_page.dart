import 'package:cloth_shopping_app/constants/padding.dart';
import 'package:cloth_shopping_app/constants/validators.dart';
import 'package:cloth_shopping_app/routes/exports.dart';
import 'package:cloth_shopping_app/views/components/app_styles.dart';
import 'package:cloth_shopping_app/views/components/elevated_button.dart';
import 'package:cloth_shopping_app/views/components/label_text.dart';
import 'package:cloth_shopping_app/views/components/text_form_field.dart';
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
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isPassword = true;

  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: heightQuery(context) * 0.3,
              decoration: const BoxDecoration(
                  // color: Colors.green,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/login.jpg"))),
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
                        Form(
                            key: formKey,
                            child: Column(
                              children: [
                                CustomTextFormField(
                                  controller: emailController,
                                  hintText: "Email address",
                                  prefixIcon: Icons.mail,
                                  validator: emailValidator,
                                ),
                                const Gap(15),
                                const LabelText(labelText: "Password"),
                                CustomTextFormField(
                                  controller: passwordController,
                                  hintText: "Password",
                                  obscureText: isPassword,
                                  validator: passwordValidator,
                                  suffixIcon: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          isPassword = !isPassword;
                                        });
                                      },
                                      icon: Icon(isPassword
                                          ? Icons.visibility
                                          : Icons.visibility_off)),
                                  prefixIcon: Icons.lock,
                                ),
                              ],
                            )),
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
                              onPressed: () {
                                if (formKey.currentState!.validate()) {
                                  print("Validated");
                                }
                              },
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

  String? passwordValidator(password) {
    return Validators.validatePassword(password!);
  }

  String? emailValidator(email) {
    return Validators.validateEmail(email!);
  }
}
