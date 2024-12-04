import 'package:cloth_shopping_app/constants/colors.dart';
import 'package:cloth_shopping_app/constants/images.dart';
import 'package:cloth_shopping_app/views/components/custom_icon_button.dart';
import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomIconButton(
      onTap: () {
        Navigator.pop(context);
      },
      src: Images.arrowRight,
      iconColor: AppColors.blackColor,
    );
  }
}
