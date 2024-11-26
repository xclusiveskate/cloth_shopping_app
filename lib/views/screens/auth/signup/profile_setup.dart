import 'dart:io';

import 'package:cloth_shopping_app/routes/exports.dart';

class ProfileSetUpScreen extends StatefulWidget {
  const ProfileSetUpScreen({super.key});

  static const id = "profileSetUpScreen";
  @override
  State<ProfileSetUpScreen> createState() => _ProfileSetUpScreenState();
}

class _ProfileSetUpScreenState extends State<ProfileSetUpScreen> {
  XFile? image;
  String imagePath = "";
  pickImage() async {
    ImagePicker picker = ImagePicker();
    var file = await picker.pickImage(source: ImageSource.camera);
    if (file != null) {
      imagePath = file.path;
      setState(() {});
    }
  }

  final formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController numberController = TextEditingController();

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
                    imagePath.isEmpty
                        ? CircleAvatar(
                            radius: 54,
                            child: Image.asset("assets/images/placeholder.jpg"),
                          )
                        : CircleAvatar(
                            radius: 54,
                            backgroundImage: FileImage(File(imagePath)),
                          ),
                    Positioned(
                        bottom: -10,
                        right: -20,
                        child: CustomElevatedButton(
                            onPressed: () {
                              pickImage();
                            },
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
                    key: formKey,
                    child: Column(
                      children: [
                        CustomTextFormField(
                            hintText: "Full name",
                            validator: (name) {
                              if (name == null) {
                                return "field must not be empty";
                              } else {
                                return null;
                              }
                            },
                            controller: nameController,
                            prefixIcon: Icons.person),
                        const Gap(16),
                        CustomTextFormField(
                            hintText: "Date of birth",
                            controller: dateController,
                            suffixIcon: IconButton(
                                onPressed: () async {
                                  await showDatePicker(
                                      context: context,
                                      firstDate: DateTime(1950),
                                      lastDate: DateTime.now());
                                },
                                icon: const Icon(Icons.calendar_month)),
                            validator: (p0) {
                              return null;
                            },
                            prefixIcon: Icons.calendar_view_month),
                        const Gap(16),
                        CustomTextFormField(
                            hintText: "Phone number",
                            keyboardType: TextInputType.phone,
                            controller: numberController,
                            validator: (p0) {
                              return null;
                            },
                            prefixIcon: Icons.phone),
                      ],
                    )),
                const Spacer(),
                CustomElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      Navigator.pushNamed(context, VerifyEmailOtp.id);
                      print("Validated");
                    }
                  },
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
