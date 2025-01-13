import 'package:cloth_shopping_app/views/components/app_styles.dart';
import 'package:flutter/material.dart';

class LabelText extends StatelessWidget {
  final String labelText;
  const LabelText({super.key, required this.labelText});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Text(
        labelText,
        style: textStyle(
          color: Colors.blue,
          size: 14,
          weight: FontWeight.w500,
        ),
      ),
    );
  }
}
