import 'package:cloth_shopping_app/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        height: 30,
        width: 30,
        decoration: BoxDecoration(
            border: Border.all(color: blackColor, width: 0.5),
            borderRadius: const BorderRadius.all(Radius.circular(8))),
        child: const Icon(Icons.arrow_back_sharp),
      ),
    );
  }
}
