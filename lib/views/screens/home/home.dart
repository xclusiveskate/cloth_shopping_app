import 'package:cloth_shopping_app/constants/images.dart';
import 'package:cloth_shopping_app/constants/padding.dart';
import 'package:cloth_shopping_app/constants/texts.dart';
import 'package:cloth_shopping_app/routes/exports.dart';
import 'package:cloth_shopping_app/views/components/custom_circleavatar.dart';
import 'package:cloth_shopping_app/views/components/custom_icon_button.dart';
import 'package:cloth_shopping_app/views/components/horizontal_product_card.dart';
import 'package:cloth_shopping_app/views/components/vertical_product_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CustomCircleAvatar(
                  radius: 22,
                  backImage: AssetImage(Images.placeholder),
                ),
                const Gap(5),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Hello ${AppTexts.username} 👋",
                        style: textStyle(weight: FontWeight.w700)),
                    Text(AppTexts.userEmail,
                        style: textStyle(weight: FontWeight.w400))
                  ],
                ),
                const Spacer(),
                CustomIconButton(
                  onTap: () {},
                  src: Images.notification,
                  iconColor: AppColors.darkGrey,
                )
              ],
            ),
            const Gap(15),
            Container(
              color: Colors.blue,
              height: heightQuery(context) * 0.3,
            ),
            const Gap(10),
            Text(
              "Popular Products",
              style: textStyle(
                  color: AppColors.boldText, size: 16, weight: FontWeight.w500),
            ),
            const ProductListView(
              viewHeight: 250,
              itemCount: 6,
              scrollDirection: Axis.horizontal,
              product: VerticalProductCard(),
            ),
            const Gap(15),
            Text(
              "Flash Sales",
              style: textStyle(
                  color: AppColors.boldText, size: 16, weight: FontWeight.w500),
            ),
            const ProductListView(
              viewHeight: 250,
              itemCount: 6,
              scrollDirection: Axis.horizontal,
              product: VerticalProductCard(),
            ),
            const Gap(15),
            Text(
              "Most Popular",
              style: textStyle(
                  color: AppColors.boldText, size: 16, weight: FontWeight.w500),
            ),
            const ProductListView(
              viewHeight: 130,
              itemCount: 6,
              scrollDirection: Axis.horizontal,
              product: HorizontalProductCard(),
            ),
            const Gap(15),
            Text(
              "Best Sales",
              style: textStyle(
                  color: AppColors.boldText, size: 16, weight: FontWeight.w500),
            ),
            const ProductListView(
              viewHeight: 250,
              itemCount: 6,
              scrollDirection: Axis.horizontal,
              product: VerticalProductCard(),
            ),
          ],
        ),
      ),
    ));
  }
}

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




     //  BoxDecoration(
                        //   color: AppColors.offWhite,
                        //   boxShadow: [
                        //     BoxShadow(
                        //       color: AppColors.grey,
                        //       blurRadius: 0.5,
                        //       spreadRadius: 1,
                        //       blurStyle: BlurStyle.outer,
                        //       offset: Offset(0.9, 0.3),
                        //     )
                        //   ],
                        //   borderRadius: BorderRadius.all(Radius.circular(12)),
                        // ),
