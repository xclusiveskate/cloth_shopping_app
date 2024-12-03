import 'package:cloth_shopping_app/constants/colors.dart';
import 'package:cloth_shopping_app/views/components/app_styles.dart';
import 'package:flutter/material.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({super.key});

  @override
  State<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Discover Page",
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
