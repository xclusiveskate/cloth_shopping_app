import 'package:cloth_shopping_app/constants/images.dart';
import 'package:cloth_shopping_app/routes/exports.dart';

BottomNavigationBar bottomNavigationBarMenu(
    {required int currentIndex, required Function(int) onTap}) {
  return BottomNavigationBar(
    onTap: onTap,
    elevation: 0,
    currentIndex: currentIndex,
    backgroundColor: navigationBarBackground,
    type: BottomNavigationBarType.fixed,
    iconSize: 14,
    selectedFontSize: 12,
    selectedItemColor: primaryColor,
    selectedLabelStyle: textStyle(size: 12, weight: FontWeight.bold),
    showSelectedLabels: true,
    // unselectedItemColor: offWhite,
    showUnselectedLabels: true,
    items: [
      BottomNavigationBarItem(
          icon: svgIcon(Images.home, color: getCurrentColor(currentIndex == 0)),
          label: "Home"),
      BottomNavigationBarItem(
          icon: svgIcon(Images.discover,
              color: getCurrentColor(currentIndex == 1)),
          label: "Discover"),
      BottomNavigationBarItem(
          icon: svgIcon(Images.bookmark,
              color: getCurrentColor(currentIndex == 2)),
          label: "Bookmarks"),
      BottomNavigationBarItem(
          icon: svgIcon(Images.cart, color: getCurrentColor(currentIndex == 3)),
          label: "Cart"),
      BottomNavigationBarItem(
          icon: svgIcon(Images.profile,
              color: getCurrentColor(currentIndex == 4)),
          label: "Profile"),
    ],
  );
}

Color getCurrentColor(bool isSelected) {
  return isSelected ? primaryColor : gray.withOpacity(0.7);
}
