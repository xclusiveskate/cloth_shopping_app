import 'package:cloth_shopping_app/routes/exports.dart';

class CustomCircleAvatar extends StatelessWidget {
  const CustomCircleAvatar({
    super.key,
    required this.radius,
    required this.backImage,
    this.child,
  });
  final double radius;
  final ImageProvider<Object>? backImage;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 22,
      backgroundColor: AppColors.overlayColor,
      backgroundImage: backImage,
      child: child,
      onBackgroundImageError: (exception, stackTrace) {
        return;
      },
    );
  }
}
