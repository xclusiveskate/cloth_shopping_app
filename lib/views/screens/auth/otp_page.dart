import 'package:flutter/material.dart';

class ResetOtpPage extends StatefulWidget {
  const ResetOtpPage({super.key});

  static const id = "resetOtpPage";
  @override
  State<ResetOtpPage> createState() => _ResetOtpPageState();
}

class _ResetOtpPageState extends State<ResetOtpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Text("Input OTP to reset your password"),
            ...List.generate(
              4,
              (index) => const SizedBox(
                height: 50,
                width: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
