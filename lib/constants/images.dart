import 'package:cloth_shopping_app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Images {
  static const image = "assets/images";
  static const icon = "assets/icons";
  static const illustration = "assets/illustrations";

//ICONS ICONS ICONS
  static const home = "$icon/home.svg";
  static const discover = "$icon/discover.svg";
  static const bookmark = "$icon/bookmark.svg";
  static const cart = "$icon/cart.svg";
  static const profile = "$icon/profile.svg";
  static const arrowRight = "assets/icons/arrow_right.svg";
  static const notification = "assets/icons/notification.svg";

  //IMAGES IMAGES IMAGES
  static const placeholder = "assets/images/placeholder.jpg";

  //ILLUSTRATIONS ILLUSTRATIONS
}

// extension Assets on String {
//   String get icon => "assets/icons/$this.svg";
// }

SvgPicture svgIcon(
  String src, {
  Color? color,
}) {
  return SvgPicture.asset(
    src,
    height: 24,
    colorFilter:
        ColorFilter.mode(color ?? AppColors.primaryColor, BlendMode.srcIn),
  );
}
