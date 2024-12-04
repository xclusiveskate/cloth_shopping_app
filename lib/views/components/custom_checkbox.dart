// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors

import 'package:cloth_shopping_app/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomCheckbox extends StatefulWidget {
  final bool value;
  final ValueChanged<bool>? onChanged;

  const CustomCheckbox({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  _CustomCheckboxState createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onChanged?.call(!widget.value);
      },
      child: Container(
        height: 16,
        width: 16,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.blackColor40),
          borderRadius: BorderRadius.circular(4),
          color: widget.value ? AppColors.primaryColor : Colors.transparent,
        ),
        child: widget.value
            ? Icon(
                Icons.check,
                color: Colors.white,
                size: 12,
              )
            : null,
      ),
    );
  }
}
