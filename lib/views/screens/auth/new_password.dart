import 'package:cloth_shopping_app/constants/colors.dart';
import 'package:cloth_shopping_app/routes/exports.dart';
import 'package:cloth_shopping_app/views/components/app_styles.dart';
import 'package:cloth_shopping_app/views/components/back_button.dart';
import 'package:cloth_shopping_app/views/components/elevated_button.dart';
import 'package:cloth_shopping_app/views/components/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class EnterNewPasswordPage extends StatefulWidget {
  const EnterNewPasswordPage({super.key});

  @override
  State<EnterNewPasswordPage> createState() => _EnterNewPasswordPageState();

  static const id = "enterNewPasswordPage";
}

class _EnterNewPasswordPageState extends State<EnterNewPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomBackButton(),
              const Gap(25),
              Text(
                "Set new password",
                style: textStyle(size: 22, weight: FontWeight.w500),
              ),
              const Gap(10),
              Text(
                "New password must be different from previous one",
                style: textStyle(size: 14, weight: FontWeight.w200),
              ),
              const Gap(25),
              CustomTextFormField(
                hintText: "New password",
                controller: TextEditingController(),
                prefixIcon: Icons.lock,
                validator: (p0) {
                  return null;
                },
              ),
              const Gap(20),
              CustomTextFormField(
                hintText: "New password again",
                controller: TextEditingController(),
                prefixIcon: Icons.lock,
                validator: (p0) {
                  return null;
                },
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: CustomElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(
                        context, PasswordResetSuccessScreen.id);
                  },
                  child: Text(
                    "Change Password",
                    style: textStyle(
                        color: whiteColor, size: 14, weight: FontWeight.w700),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
