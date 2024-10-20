import 'package:cloth_shopping_app/constants/colors.dart';
import 'package:cloth_shopping_app/constants/padding.dart';
import 'package:cloth_shopping_app/controllers/providers/onboard_pro.dart';
import 'package:cloth_shopping_app/models/onboard_model.dart';
import 'package:cloth_shopping_app/routes/exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

import '../../components/app_styles.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  static const String id = "onboardingScreen";

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<OnboardingProvider>(builder: (context, value, child) {
      return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {
                        Navigator.pushNamedAndRemoveUntil(context,
                            SelectPreferredLangPage.id, (route) => false);
                      },
                      child: Text(
                        "Skip",
                        style: textStyle(
                          size: 16,
                          color: primaryColor,
                          weight: FontWeight.w700,
                        ),
                      )),
                ),
                Expanded(
                  child: PageView.builder(
                      itemCount: onboardingList.length,
                      onPageChanged: (pagevalue) {
                        value.changeIndex = pagevalue;
                      },
                      controller: value.controller,
                      itemBuilder: (context, index) {
                        final content = onboardingList[index];
                        return Column(
                          children: [
                            const Spacer(),
                            if (value.pageIndex.isOdd)
                              Column(children: [
                                Text(
                                  content.title,
                                  textAlign: TextAlign.center,
                                  style: textStyle(
                                      size: 26,
                                      color: blackColor,
                                      weight: FontWeight.bold),
                                ),
                                const Gap(30),
                                Text(
                                  content.content,
                                  textAlign: TextAlign.center,
                                  style: textStyle(
                                      size: 14,
                                      color: blackColor,
                                      weight: FontWeight.w600),
                                ),
                              ]),
                            if (value.pageIndex.isOdd) const Spacer(),
                            Image.asset(
                              content.image,
                              height: 250,
                            ),
                            if (!value.pageIndex.isOdd) const Spacer(),
                            if (!value.pageIndex.isOdd)
                              Column(
                                children: [
                                  Text(
                                    content.title,
                                    textAlign: TextAlign.center,
                                    style: textStyle(
                                        size: 26,
                                        color: blackColor,
                                        weight: FontWeight.bold),
                                  ),
                                  const Gap(30),
                                  Text(
                                    content.content,
                                    textAlign: TextAlign.center,
                                    style: textStyle(
                                        size: 14,
                                        color: blackColor,
                                        weight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            const Spacer(),
                          ],
                        );
                      }),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ...List.generate(
                        onboardingList.length,
                        (index) => Padding(
                              padding: const EdgeInsets.only(left: 2),
                              child: AnimatedContainer(
                                height: value.pageIndex == index ? 16 : 8,
                                width: 6,
                                decoration: BoxDecoration(
                                    color: value.pageIndex == index
                                        ? primaryMaterialColor.shade300
                                        : primaryMaterialColor.shade100,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(8))),
                                duration: const Duration(seconds: 1),
                              ),
                            )),
                    const Spacer(),
                    ElevatedButton(
                      onPressed: () {
                        if (value.pageIndex < onboardingList.length - 1) {
                          value.controller.nextPage(
                            duration: const Duration(seconds: 1),
                            curve: Curves.easeIn,
                          );
                          value.changeIndex = value.pageIndex;
                        } else {
                          Navigator.pushNamedAndRemoveUntil(context,
                              SelectPreferredLangPage.id, (route) => false);
                        }
                      },
                      style: ElevatedButton.styleFrom(
                          foregroundColor: whiteColor,
                          minimumSize: const Size(60, 60),
                          backgroundColor: primaryMaterialColor.shade300,
                          shape: const CircleBorder(),
                          elevation: 2),
                      child: SvgPicture.asset(
                        "assets/icons/arrow_right.svg",
                        height: 15,
                        width: 15,
                        colorFilter: const ColorFilter.mode(
                          whiteColor,
                          BlendMode.srcIn,
                        ),
                      ),
                    )
                  ],
                ),
                const Gap(25)
              ],
            ),
          ),
        ),
      );
    });
  }
}

List<Onboarding> onboardingList = [
  Onboarding(
    title: "Explore Unique Fashion",
    content:
        "Uncover the latest trends and timeless styles from a variety of global brands. Fashion tailored for you, right at your fingertips",
    image: "assets/illustrations/onb1.png",
  ),
  Onboarding(
    title: "Shop What Suits You",
    content:
        "Get personalized recommendations based on your preferences. We bring fashion that matches your taste.",
    image: "assets/illustrations/onb2.png",
  ),
  Onboarding(
    title: "Shop Seamlessly, Anywhere",
    content:
        "With our intuitive app, shopping is just a swipe away. Save your favorites, track your orders, and shop effortlessly anytime.",
    image: "assets/illustrations/onb3.png",
  ),
  Onboarding(
    title: "Get the Best Deals",
    content:
        "Enjoy exclusive discounts and seasonal sales available only on our platform. Never miss out on your favorite items.",
    image: "assets/illustrations/onb4.png",
  ),
  Onboarding(
    title: "Secure Payments, Quick Delivery",
    content:
        "Your dream outfit is just a tap away. Enjoy safe transactions and quick delivery to your doorstep.",
    image: "assets/illustrations/onb5.png",
  ),
];
