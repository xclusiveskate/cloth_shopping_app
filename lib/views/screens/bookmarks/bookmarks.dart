import 'package:cloth_shopping_app/constants/colors.dart';
import 'package:cloth_shopping_app/views/components/app_styles.dart';
import 'package:flutter/material.dart';

class BookmarksPage extends StatefulWidget {
  const BookmarksPage({super.key});

  @override
  State<BookmarksPage> createState() => _BookmarksPageState();
}

class _BookmarksPageState extends State<BookmarksPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Bookmarks Page",
            style: textStyle(
                color: AppColors.titleActive,
                size: 22,
                weight: FontWeight.w500),
          )
        ],
      ),
    ));
  }
}
