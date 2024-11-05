import 'package:cloth_shopping_app/constants/colors.dart';
import 'package:cloth_shopping_app/views/components/app_styles.dart';
import 'package:cloth_shopping_app/views/components/elevated_button.dart';
import 'package:cloth_shopping_app/views/components/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileSetUpScreen extends StatefulWidget {
  const ProfileSetUpScreen({super.key});

  static const id = "profileSetUpScreen";
  @override
  State<ProfileSetUpScreen> createState() => _ProfileSetUpScreenState();
}

class _ProfileSetUpScreenState extends State<ProfileSetUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  "Setup profile",
                  style: textStyle(
                      color: blackColor, size: 14, weight: FontWeight.w700),
                ),
                const Gap(25),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    const CircleAvatar(
                      radius: 54,
                    ),
                    Positioned(
                        bottom: -10,
                        right: -20,
                        child: CustomElevatedButton(
                            onPressed: () {},
                            minimumSize: const Size(35, 35),
                            shape: const CircleBorder(),
                            child: const Icon(
                              Icons.camera_alt_outlined,
                              color: whiteColor,
                            )))
                  ],
                ),
                const Gap(16),
                Text(
                  "Upload image",
                  style: textStyle(
                      color: primaryMaterialColor,
                      size: 14,
                      weight: FontWeight.bold),
                ),
                const Gap(30),
                Form(
                    child: Column(
                  children: [
                    CustomTextFormField(
                        hintText: "Full name",
                        validator: (p0) {
                          return null;
                        },
                        controller: TextEditingController(),
                        prefixIcon: Icons.person),
                    const Gap(16),
                    CustomTextFormField(
                        hintText: "Date of birth",
                        controller: TextEditingController(),
                        validator: (p0) {
                          return null;
                        },
                        prefixIcon: Icons.calendar_view_month),
                    const Gap(16),
                    CustomTextFormField(
                        hintText: "Phone number",
                        keyboardType: TextInputType.phone,
                        controller: TextEditingController(),
                        validator: (p0) {
                          return null;
                        },
                        prefixIcon: Icons.phone),
                  ],
                )),
                const Spacer(),
                CustomElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Sign up",
                    style: textStyle(
                        color: whiteColor, size: 14, weight: FontWeight.w600),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
