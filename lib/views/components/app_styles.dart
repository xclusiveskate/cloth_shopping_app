import 'package:cloth_shopping_app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle textStyle({double? size, Color? color, FontWeight? weight}) {
  return GoogleFonts.poppins(
    fontSize: size ?? 14.0,
    color: color ?? AppColors.blackColor,
    fontWeight: weight ?? FontWeight.normal,
    textStyle: const TextStyle(
        // decorationStyle: TextDecorationStyle.dashed,
        ),
  );
}
