import 'package:cloth_shopping_app/constants/images.dart';
import 'package:cloth_shopping_app/constants/padding.dart';
import 'package:cloth_shopping_app/constants/texts.dart';
import 'package:cloth_shopping_app/routes/exports.dart';
import 'package:cloth_shopping_app/views/components/custom_circleavatar.dart';
import 'package:cloth_shopping_app/views/components/custom_icon_button.dart';

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
            SizedBox(
              height: 250,
              child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                          right: 16.0, top: 8.0, bottom: 8.0, left: 4.0),
                      child: Container(
                        width: widthQuery(context) * 0.35,
                        // height: 200,

                        decoration: const CustomBoxDecoration(
                                decorationImage: AssetImage("assetName"))
                            .box(),

                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    height: 100,
                                    decoration: const CustomBoxDecoration(
                                            decorationImage: AssetImage(
                                                "assets/images/passres.jpg"))
                                        .box(),
                                  ),
                                  Positioned(
                                      right: 10,
                                      top: 5,
                                      child: Container(
                                        decoration: const BoxDecoration(
                                            color: AppColors.dialogErrorBorder,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(12))),
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 0.0, horizontal: 6.0),
                                        child: const Text("20% off"),
                                      ))
                                ],
                              ),
                              const Gap(15),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "LIPSY LONDON",
                                    style: textStyle(
                                        color: AppColors.grey,
                                        weight: FontWeight.w500,
                                        size: 15),
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
                                        size: 15),
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
                                          color: AppColors.primaryColor
                                              .withGreen(200),
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
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  })),
            )
          ],
        ),
      ),
    ));
  }
}

class CustomBoxDecoration {
  final double? border;
  final ImageProvider<Object> decorationImage;
  const CustomBoxDecoration({
    this.border = 12,
    required this.decorationImage,
  });
  BoxDecoration box() {
    return BoxDecoration(
      color: AppColors.offWhite,
      boxShadow: const [
        BoxShadow(
          color: AppColors.grey,
          blurRadius: 0.5,
          spreadRadius: 1,
          blurStyle: BlurStyle.outer,
          offset: Offset(0.9, 0.3),
        )
      ],
      image: DecorationImage(image: decorationImage, fit: BoxFit.fill),
      borderRadius: const BorderRadius.all(Radius.circular(12)),
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
