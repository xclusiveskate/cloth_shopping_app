import 'package:cloth_shopping_app/routes/exports.dart';

class VerifyEmailOtp extends StatefulWidget {
  const VerifyEmailOtp({super.key});

  static const id = "verifyEmailOtp";

  @override
  State<VerifyEmailOtp> createState() => _VerifyEmailOtpState();
}

class _VerifyEmailOtpState extends State<VerifyEmailOtp> {
  @override
  Widget build(BuildContext context) {
    return CustomOtpPage(
      onPressed: () async {
        await showDialog(
            context: context,
            barrierDismissible: false,
            barrierColor: greyLight,
            builder: (context) {
              return Dialog(
                insetPadding: const EdgeInsets.all(12),
                elevation: 2,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text("Whooohoooo!!"),
                      const Gap(10),
                      const Text("Your email has been successfully verified"),
                      const Gap(60),
                      CustomElevatedButton(
                          onPressed: () {
                            Navigator.pushNamedAndRemoveUntil(
                                context, SignInPage.id, (route) => false);
                          },
                          child: Text(
                            "Go to log in",
                            style: textStyle(
                                color: offWhite,
                                weight: FontWeight.w500,
                                size: 15),
                          ))
                    ],
                  ),
                ),
              );
            });
      },
    );
  }
}
