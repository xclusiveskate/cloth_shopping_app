import 'package:flutter/material.dart';

class ProductBuyNow extends StatefulWidget {
  const ProductBuyNow({super.key});

  @override
  State<ProductBuyNow> createState() => _ProductBuyNowState();
}

class _ProductBuyNowState extends State<ProductBuyNow> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Product Buy now screen"),
      ),
    );
  }
}
