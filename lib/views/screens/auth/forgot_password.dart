import 'package:cloth_shopping_app/constants/colors.dart';
import 'package:cloth_shopping_app/views/components/app_styles.dart';
import 'package:cloth_shopping_app/views/components/back_button.dart';
import 'package:cloth_shopping_app/views/components/elevated_button.dart';
import 'package:cloth_shopping_app/views/components/input_field.dart';
import 'package:cloth_shopping_app/views/screens/auth/otp_page.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ForgotPasswordPage extends StatefulWidget {
  static const id = "forgotPasswordPage";
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 30, left: 12, right: 12, bottom: 20),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomBackButton(),
                  const Gap(50),
                  Text(
                    "Password recovery",
                    style: textStyle(
                        color: blackColor, weight: FontWeight.bold, size: 24),
                  ),
                  const Gap(15),
                  Text(
                    "We'll send you verification code to reset your password",
                    style: textStyle(
                        color: blackColor40, weight: FontWeight.w400, size: 18),
                  ),
                  const Gap(30),
                  CustomTextField(
                    controller: controller,
                    prefixIcon: Icons.mail,
                    hintText: "enter your email",
                  )
                ],
              ),
              const Spacer(),
              CustomElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, ResetOtpPage.id);
                  },
                  child: Text(
                    "Send Otp",
                    style: textStyle(
                        color: whiteColor, weight: FontWeight.w400, size: 20),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
