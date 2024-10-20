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
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hintText,
          suffixIcon: Icon(suffixIcon),
          prefixIcon: Icon(prefixIcon),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
                color: Colors.black, // Transparent border
                width: 0.1),
            borderRadius: BorderRadius.circular(12), // Rounded border
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: primaryMaterialColor, // Transparent border when focused
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
        ),
      ),
    );
  }
}
