import 'package:cloth_shopping_app/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.onChanged,
    required this.controller,
  });

  String? hintText;
  IconData? prefixIcon;
  IconData? suffixIcon;
  final TextEditingController controller;
  Function(String value)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        controller: controller,
        onChanged: (value) {},
        decoration: InputDecoration(
            hintText: hintText,
            suffixIcon: Icon(suffixIcon),
            prefixIcon: Icon(prefixIcon),
            border: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: blackColor10,
                  width: 0.1,
                ),
                borderRadius: BorderRadius.all(Radius.circular(12)))),
      ),
    );
  }
}
