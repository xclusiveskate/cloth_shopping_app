import 'package:cloth_shopping_app/constants/padding.dart';
import 'package:cloth_shopping_app/constants/validators.dart';
import 'package:cloth_shopping_app/routes/exports.dart';
import 'package:cloth_shopping_app/views/components/label_text.dart';

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
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome !!!",
                      style: textStyle(
                          size: 24, color: AppColors.blackColor, weight: FontWeight.w500),
                    ),
                    const Gap(5),
                    Text("Log in to continue enjoying our exclusive offers",
                        style: textStyle(
                            size: 16,
                            color: AppColors.blackColor40,
                            weight: FontWeight.w500)),
                    const Gap(20),
                    Form(
                        key: formKey,
                        child: Column(
                          children: [
                            const LabelText(labelText: "Email"),
                            const Gap(10),
                            CustomTextFormField(
                              controller: emailController,
                              hintText: "Email address",
                              prefixIcon: Icons.mail,
                              validator: emailValidator,
                            ),
                            const Gap(20),
                            const LabelText(labelText: "Password"),
                            const Gap(10),
                            CustomTextFormField(
                              controller: passwordController,
                              hintText: "Password",
                              obscureText: isPassword,
                              validator: passwordValidator,
                              suffixIcon: IconButton(
                                  onPressed: onPressedSuffixIcon,
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
                          Navigator.pushNamed(context, ForgotPasswordPage.id);
                        },
                        child: const Text("Forgot Password??"),
                      ),
                    ),
                    Gap(heightQuery(context) > 700
                        ? heightQuery(context) * 0.1
                        : 20),
                    Column(
                      children: [
                        CustomElevatedButton(
                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                print("Validated");
                              }
                            },
                            backColor: AppColors.primaryColor,
                            child: Text(
                              "Log In",
                              style: textStyle(color: AppColors.whiteColor),
                            )),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don't have an account?",
                              style: textStyle(color: AppColors.blackColor40),
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, SignUpPage.id);
                                },
                                child: const Text("Sign up"))
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
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

  String? passwordValidator(password) {
    return Validators.validatePassword(password!);
  }

  String? emailValidator(email) {
    return Validators.validateEmail(email!);
  }
}
