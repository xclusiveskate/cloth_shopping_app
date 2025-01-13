import 'package:cloth_shopping_app/constants/colors.dart';
import 'package:cloth_shopping_app/constants/padding.dart';
import 'package:cloth_shopping_app/views/components/app_styles.dart';
import 'package:cloth_shopping_app/views/components/custom_boxdecoration.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HorizontalProductCard extends StatelessWidget {
  const HorizontalProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(right: 16.0, top: 8.0, bottom: 8.0, left: 4.0),
      child: Container(
        width: widthQuery(context) * 0.7,
        // height: 200,

        decoration:
            const CustomBoxDecoration(decorationImage: AssetImage("assetName"))
                .box(),

        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Row(
            children: [
              Stack(
                children: [
                  Container(
                    height: 105,
                    width: widthQuery(context) * 0.25,
                    decoration: const CustomBoxDecoration(
                            decorationImage:
                                AssetImage("assets/images/passres.jpg"))
                        .box(),
                  ),
                  Positioned(
                      right: 7,
                      top: 5,
                      child: Container(
                        decoration: const BoxDecoration(
                            color: AppColors.dialogErrorBorder,
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                        padding: const EdgeInsets.symmetric(
                            vertical: 0.0, horizontal: 6.0),
                        child: const Text("20% off"),
                      ))
                ],
              ),
              const Gap(10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "LIPSY LONDON",
                      style: textStyle(
                          color: AppColors.grey,
                          weight: FontWeight.w500,
                          size: 14),
                    ),
                    const Gap(10),
                    Text(
                      "Mountain Warehouse for women",
                      maxLines: 2,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: textStyle(
                          color: AppColors.boldText,
                          weight: FontWeight.w500,
                          size: 13),
                    ),
                    const Gap(10),
                    Row(
                      children: [
                        Text(
                          "\$420",
                          style: textStyle(
                              color: AppColors.primaryColor,
                              weight: FontWeight.bold,
                              size: 14),
                        ),
                        const Gap(5),
                        Text(
                          "\$420",
                          style: TextStyle(
                            color: AppColors.primaryColor.withGreen(200),
                            decoration: TextDecoration
                                .lineThrough, // Adds the line through the text
                            decorationColor: AppColors
                                .boldText, // Optional: Change line color
                            decorationThickness:
                                2, // Optional: Adjust line thickness
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
