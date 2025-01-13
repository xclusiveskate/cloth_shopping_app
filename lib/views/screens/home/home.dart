import 'dart:async';

import 'package:cloth_shopping_app/constants/images.dart';
import 'package:cloth_shopping_app/constants/padding.dart';
import 'package:cloth_shopping_app/constants/texts.dart';
import 'package:cloth_shopping_app/routes/exports.dart';
import 'package:cloth_shopping_app/views/components/buttons/custom_icon_button.dart';
import 'package:cloth_shopping_app/views/components/custom_circleavatar.dart';
import 'package:cloth_shopping_app/views/components/dot.indicator.dart';
import 'package:cloth_shopping_app/views/components/product/horizontal_product_card.dart';
import 'package:cloth_shopping_app/views/components/product/product_listview.dart';
import 'package:cloth_shopping_app/views/components/product/vertical_product_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  late PageController _pageController;
  late Timer _timer;
  List<String> offers = [
    "assets/illustrations/onb1.png",
    "assets/illustrations/onb2.png",
    "assets/illustrations/onb3.png",
    "assets/illustrations/onb4.png",
    "assets/illustrations/onb5.png",
  ];
  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    _timer = Timer.periodic(const Duration(seconds: 4), (Timer timer) {
      if (_selectedIndex < offers.length - 1) {
        _selectedIndex++;
      } else {
        _selectedIndex = 0;
      }

      _pageController.animateToPage(
        _selectedIndex,
        duration: const Duration(milliseconds: 350),
        curve: Curves.easeOutCubic,
      );
    });
    super.initState();
    print(offers.length);
  }

  // @override
  // void dispose() {
  //   _pageController.dispose();
  //   _timer.cancel();
  //   super.dispose();
  // }

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
                      itemCount: offers.length,
                      controller: _pageController,
                      onPageChanged: (value) {
                        setState(() {
                          _selectedIndex = value;
                        });
                        _pageController.animateToPage(
                          _selectedIndex,
                          duration: const Duration(milliseconds: 350),
                          curve: Curves.easeOutCubic,
                        );
                      },
                      itemBuilder: (context, index) {
                        return Container(
                          padding: EdgeInsets.zero,
                          child: Image.asset(
                            offers[index],
                            fit: BoxFit.fill,
                          ),
                        );
                      }),
                  FittedBox(
                    child: Padding(
                      padding: const EdgeInsets.all(defaultPadding),
                      child: SizedBox(
                        height: 16,
                        child: Row(
                          children: List.generate(
                            offers.length,
                            (index) {
                              return Padding(
                                padding: const EdgeInsets.only(
                                    left: defaultPadding / 4),
                                child: DotIndicator(
                                  isActive: index == _selectedIndex,
                                  activeColor: AppColors.primaryColor,
                                  inActiveColor:
                                      AppColors.primaryColor.withOpacity(0.5),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  )
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
