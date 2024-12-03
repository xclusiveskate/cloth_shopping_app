import 'package:cloth_shopping_app/routes/exports.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Cart Page",
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
