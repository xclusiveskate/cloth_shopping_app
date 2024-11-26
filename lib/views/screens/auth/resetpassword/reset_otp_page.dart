import 'package:cloth_shopping_app/routes/exports.dart';

class ResetOtpPage extends StatefulWidget {
  const ResetOtpPage({super.key});

  static const id = "resetOtpPage";
  @override
  State<ResetOtpPage> createState() => _ResetOtpPageState();
}

class _ResetOtpPageState extends State<ResetOtpPage> {
  @override
  Widget build(BuildContext context) {
    return CustomOtpPage(onPressed: () {});
  }
}
