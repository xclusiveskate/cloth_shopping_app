// ignore_for_file: must_be_immutable

import 'package:cloth_shopping_app/constants/colors.dart';
import 'package:cloth_shopping_app/views/components/app_styles.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  CustomElevatedButton({
    super.key,
    this.backColor,
    this.shape,
    this.minimumSize,
    required this.onPressed,
    required this.child,
  });
  Color? backColor;
  OutlinedBorder? shape;
  Size? minimumSize;
  final VoidCallback onPressed;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation: 6,
        foregroundColor: Colors.blueGrey,
        minimumSize: minimumSize ?? const Size(double.infinity, 55),
        backgroundColor: backColor ?? AppColors.primaryColor,
        shape: shape ??
            const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12))),
        textStyle: textStyle(
            size: 16, color: AppColors.whiteColor, weight: FontWeight.bold),
      ),
      child: child,
    );
  }
}
