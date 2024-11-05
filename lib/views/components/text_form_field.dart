import 'package:cloth_shopping_app/constants/colors.dart';
import 'package:cloth_shopping_app/views/components/app_styles.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final bool? obscureText;
  final IconData prefixIcon;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;
  final Function(String value)? onChanged;
  final VoidCallback? onTap;
  final TextInputType? keyboardType;

  const CustomTextFormField({
    super.key,
    required this.hintText,
    required this.controller,
    this.obscureText,
    required this.prefixIcon,
    this.suffixIcon,
    this.validator,
    this.onChanged,
    this.onTap,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: onChanged,
      onTap: onTap,
      obscureText: obscureText ?? false,
      validator: validator,
      obscuringCharacter: "*",
      keyboardType: keyboardType ?? TextInputType.text,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: textStyle(color: greyColor),
        prefixIcon: Icon(
          prefixIcon,
          color: greyColor,
        ),
        suffixIcon: suffixIcon,
        border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12))),
      ),
    );
  }
}




//how to create custom text form field