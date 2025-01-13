import 'package:cloth_shopping_app/routes/exports.dart';

class ProductListView extends StatelessWidget {
  const ProductListView({
    super.key,
    required this.viewHeight,
    required this.itemCount,
    required this.scrollDirection,
    this.product,
  });
  final double viewHeight;
  final int itemCount;
  final Axis scrollDirection;
  final Widget? product;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: viewHeight,
      child: ListView.builder(
          itemCount: itemCount,
          scrollDirection: scrollDirection,
          itemBuilder: ((context, index) {
            return product;
          })),
    );
  }
}
