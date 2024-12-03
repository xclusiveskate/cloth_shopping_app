import 'package:cloth_shopping_app/constants/validators.dart';
import 'package:cloth_shopping_app/routes/exports.dart';
import 'package:cloth_shopping_app/views/components/back_button.dart';

class EnterNewPasswordPage extends StatefulWidget {
  const EnterNewPasswordPage({super.key});

  @override
  State<EnterNewPasswordPage> createState() => _EnterNewPasswordPageState();

  static const id = "enterNewPasswordPage";
}

class _EnterNewPasswordPageState extends State<EnterNewPasswordPage> {
  final passwword = TextEditingController();
  final confirmPasswword = TextEditingController();

  final formKey = GlobalKey<FormState>();

  bool isVisible = true;
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
              Form(
                  key: formKey,
                  child: Column(
                    children: [
                      CustomTextFormField(
                        hintText: "New password",
                        controller: passwword,
                        prefixIcon: Icons.lock,
                        obscureText: isVisible,
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                isVisible = !isVisible;
                              });
                            },
                            icon: isVisible
                                ? const Icon(
                                    Icons.visibility,
                                    color: AppColors.primaryColor,
                                  )
                                : const Icon(
                                    Icons.visibility_off,
                                    color: AppColors.primaryColor,
                                  )),
                        validator: (pass) {
                          return Validators.validatePassword(pass!);
                        },
                      ),
                      const Gap(20),
                      CustomTextFormField(
                        hintText: "New password again",
                        controller: confirmPasswword,
                        prefixIcon: Icons.lock,
                        obscureText: isVisible,
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                isVisible = !isVisible;
                              });
                            },
                            icon: isVisible
                                ? const Icon(
                                    Icons.visibility,
                                    color: AppColors.primaryColor,
                                  )
                                : const Icon(
                                    Icons.visibility_off,
                                    color: AppColors.primaryColor,
                                  )),
                        validator: (pass) {
                          if (passwword.text != pass) {
                            return "Password does not match";
                          } else {
                            return null;
                          }
                        },
                      ),
                    ],
                  )),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: CustomElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      Navigator.pushReplacementNamed(
                          context, PasswordResetSuccessScreen.id);
                    }
                  },
                  child: Text(
                    "Change Password",
                    style: textStyle(
                        color: AppColors.whiteColor,
                        size: 14,
                        weight: FontWeight.w700),
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
