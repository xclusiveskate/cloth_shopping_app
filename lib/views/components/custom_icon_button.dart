import 'package:cloth_shopping_app/constants/colors.dart';
import 'package:cloth_shopping_app/constants/images.dart';
import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    required this.onTap,
    required this.src,
    this.iconColor,
  });
  final VoidCallback onTap;
  final String src;
  final Color? iconColor;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 35,
        width: 35,
        decoration: BoxDecoration(
            border: Border.all(color: AppColors.primaryColor, width: 0.8),
            borderRadius: const BorderRadius.all(Radius.circular(8))),
        child: Padding(
          padding: const EdgeInsets.all(3),
          child: svgIcon(src, color: iconColor),
        ),
      ),
    );
  }
}
