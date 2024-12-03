import 'package:cloth_shopping_app/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomBoxDecoration {
  final double? border;
  final ImageProvider<Object> decorationImage;
  const CustomBoxDecoration({
    this.border = 12,
    required this.decorationImage,
  });
  BoxDecoration box() {
    return BoxDecoration(
      color: AppColors.offWhite,
      boxShadow: const [
        BoxShadow(
          color: AppColors.grey,
          blurRadius: 0.5,
          spreadRadius: 1,
          blurStyle: BlurStyle.outer,
          offset: Offset(0.9, 0.3),
        )
      ],
      image: DecorationImage(image: decorationImage, fit: BoxFit.fill),
      borderRadius: const BorderRadius.all(Radius.circular(12)),
    );
  }
}
