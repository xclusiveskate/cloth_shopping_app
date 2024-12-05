import 'package:cloth_shopping_app/constants/images.dart';
import 'package:cloth_shopping_app/constants/texts.dart';
import 'package:cloth_shopping_app/routes/exports.dart';
import 'package:cloth_shopping_app/views/components/custom_circleavatar.dart';
import 'package:cloth_shopping_app/views/components/custom_icon_button.dart';
import 'package:cloth_shopping_app/views/components/horizontal_product_card.dart';
import 'package:cloth_shopping_app/views/components/product_listview.dart';
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
            AspectRatio(
              aspectRatio: 1.87,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  PageView.builder(
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Container();
                      })
                ],
              ),
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
