import 'dart:async';

import 'package:cloth_shopping_app/constants/padding.dart';
import 'package:cloth_shopping_app/routes/exports.dart';
import 'package:cloth_shopping_app/views/components/back_button.dart';
import 'package:cloth_shopping_app/views/components/otp_fields.dart';

class CustomOtpPage extends StatefulWidget {
  const CustomOtpPage({super.key, required this.onPressed});

  // static const id = "customOtpPage";
  final VoidCallback onPressed;
  @override
  State<CustomOtpPage> createState() => _CustomOtpPageState();
}

class _CustomOtpPageState extends State<CustomOtpPage> {
  final controllers = List.generate(4, (index) => TextEditingController());

  String otp = "";
  int timeRemaining = 180;
  late Timer timer;

  String getOtp() {
    return controllers.map((e) => e.text).join();
  }

  validateOtp() {
    otp = getOtp();
  }

  startCountdown() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (timeRemaining > 0) {
        setState(() {
          timeRemaining--;
        });
      } else {
        timer.cancel();
      }
    });
  }

  @override
  void initState() {
    super.initState();
    startCountdown();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
              top: 16, left: 12.0, right: 12.0, bottom: 26.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomBackButton(),
              const Gap(30),
              Text(
                "Verification Code",
                style: textStyle(
                  size: 24,
                  weight: FontWeight.bold,
                ),
              ),
              const Gap(10),
              Text(
                "Verification code has been sent your email",
                style: textStyle(
                  size: 16,
                  weight: FontWeight.w300,
                ),
              ),
              const Gap(30),
              OtpFields(controllers: controllers),
              const Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Resend code after"),
                  const Gap(10),
                  Text(
                    _formatDuration(timeRemaining),
                    style: textStyle(
                        color: AppColors.primaryColor, weight: FontWeight.bold),
                  ),
                ],
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomElevatedButton(
                    onPressed: () {
                      if (timeRemaining == 0) {
                        setState(() {
                          timeRemaining = 180;
                          startCountdown();
                        });
                      } else {
                        return;
                      }
                    },
                    minimumSize: Size(widthQuery(context) * 0.45, 55),
                    backColor: Colors.white,
                    child: Text(
                      "Resend",
                      style: textStyle(
                          color: AppColors.primaryColor,
                          size: 18,
                          weight: FontWeight.w400),
                    ),
                  ),
                  CustomElevatedButton(
                    onPressed: widget.onPressed,
                    minimumSize: Size(widthQuery(context) * 0.45, 55),
                    backColor: AppColors.primaryColor,
                    child: Text(
                      "Confirm",
                      style: textStyle(
                          color: AppColors.whiteColor,
                          size: 18,
                          weight: FontWeight.w400),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  _formatDuration(int secondsRemaining) {
    Duration duration = Duration(seconds: secondsRemaining);

    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String minutes = twoDigits(duration.inMinutes.remainder(60));
    String seconds = twoDigits(duration.inSeconds.remainder(60));

    return "$minutes: $seconds";
  }
}
